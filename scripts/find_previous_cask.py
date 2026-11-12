#!/usr/bin/env python3
"""Find the nearest historical cask whose version differs from the candidate."""

from __future__ import annotations

import argparse
import re
import subprocess
import sys
from pathlib import Path

VERSION_LINE = re.compile(r'^\s*version "([^"]+)"\s*$')


def run_git(repository: Path, *arguments: str) -> str:
    return subprocess.run(
        ["git", "-C", str(repository), *arguments],
        check=True,
        capture_output=True,
        text=True,
    ).stdout


def cask_version(contents: str) -> str | None:
    for line in contents.splitlines():
        match = VERSION_LINE.match(line)
        if match:
            return match.group(1)
    return None


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("repository", type=Path)
    parser.add_argument("start_ref")
    parser.add_argument("current_cask", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()

    repository = args.repository.resolve()
    current_path = args.current_cask
    if not current_path.is_absolute():
        current_path = repository / current_path
    current_version = cask_version(current_path.read_text())
    if current_version is None:
        print(f"::error::Could not read current cask version from {current_path}.", file=sys.stderr)
        return 1

    try:
        run_git(repository, "rev-parse", "--verify", f"{args.start_ref}^{{commit}}")
        commits = run_git(
            repository,
            "log",
            "--format=%H",
            args.start_ref,
            "--",
            "Casks/veasel-code.rb",
        ).splitlines()
    except subprocess.CalledProcessError as error:
        print(f"::error::Could not inspect cask history from {args.start_ref}: {error}", file=sys.stderr)
        return 1

    for commit in commits:
        try:
            contents = run_git(repository, "show", f"{commit}:Casks/veasel-code.rb")
        except subprocess.CalledProcessError:
            continue
        previous_version = cask_version(contents)
        if previous_version is None or previous_version == current_version:
            continue
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(contents)
        print(f"Using cask version {previous_version} from {commit} as the previous release.")
        return 0

    print(
        f"::error::No earlier cask version than {current_version} was found at {args.start_ref}.",
        file=sys.stderr,
    )
    return 1


if __name__ == "__main__":
    sys.exit(main())
