from __future__ import annotations

import subprocess
import sys
import tempfile
import unittest
from pathlib import Path


SCRIPT = Path(__file__).with_name("find_previous_cask.py")


def git(repository: Path, *arguments: str) -> str:
    return subprocess.run(
        ["git", "-C", str(repository), *arguments],
        check=True,
        capture_output=True,
        text=True,
    ).stdout.strip()


def write_cask(repository: Path, version: str, description: str) -> None:
    path = repository / "Casks/veasel-code.rb"
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(
        f'cask "veasel-code" do\n  version "{version}"\n  desc "{description}"\nend\n'
    )


def commit_cask(repository: Path, message: str) -> str:
    git(repository, "add", "Casks/veasel-code.rb")
    git(repository, "commit", "--quiet", "-m", message)
    return git(repository, "rev-parse", "HEAD")


def resolve_previous(
    repository: Path, start_ref: str, current_cask: Path, output: Path
) -> subprocess.CompletedProcess[str]:
    return subprocess.run(
        [sys.executable, str(SCRIPT), str(repository), start_ref, str(current_cask), str(output)],
        capture_output=True,
        text=True,
    )


class PreviousCaskHistoryTests(unittest.TestCase):
    def setUp(self) -> None:
        self.temporary = tempfile.TemporaryDirectory()
        self.root = Path(self.temporary.name)
        self.repository = self.root / "history"
        self.repository.mkdir()
        git(self.repository, "init", "--quiet")
        git(self.repository, "config", "user.name", "Homebrew cask CI")
        git(self.repository, "config", "user.email", "homebrew-cask-ci@example.invalid")

    def tearDown(self) -> None:
        self.temporary.cleanup()

    def test_skips_same_version_cask_commits_and_unrelated_commits(self) -> None:
        write_cask(self.repository, "0.69.13-next.0", "first release")
        commit_cask(self.repository, "cask: add 0.69.13")
        write_cask(self.repository, "0.69.14-next.0", "second release")
        commit_cask(self.repository, "cask: add 0.69.14")
        write_cask(self.repository, "0.69.14-next.0", "metadata-only update")
        same_version_commit = commit_cask(self.repository, "docs: update cask metadata")
        (self.repository / "README.md").write_text("tap maintenance\n")
        git(self.repository, "add", "README.md")
        git(self.repository, "commit", "--quiet", "-m", "docs: add tap note")
        main_ref = git(self.repository, "rev-parse", "HEAD")

        current_cask = self.root / "candidate.rb"
        write_cask(self.repository, "0.69.15-next.0", "candidate release")
        current_cask.write_text((self.repository / "Casks/veasel-code.rb").read_text())
        output = self.root / "previous.rb"

        result = resolve_previous(self.repository, main_ref, current_cask, output)

        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertIn('version "0.69.14-next.0"', output.read_text())

        write_cask(self.repository, "0.69.14-next.0", "metadata-only update")
        current_cask.write_text((self.repository / "Casks/veasel-code.rb").read_text())
        result = resolve_previous(self.repository, same_version_commit, current_cask, output)

        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertIn('version "0.69.13-next.0"', output.read_text())

    def test_fails_when_history_has_no_older_release(self) -> None:
        write_cask(self.repository, "0.69.15-next.0", "only release")
        only_release = commit_cask(self.repository, "cask: add 0.69.15")
        current_cask = self.repository / "Casks/veasel-code.rb"
        output = self.root / "no-previous.rb"

        result = resolve_previous(self.repository, only_release, current_cask, output)

        self.assertNotEqual(result.returncode, 0)
        self.assertIn("No earlier cask version", result.stderr)
        self.assertFalse(output.exists())


if __name__ == "__main__":
    unittest.main()
