#!/usr/bin/env python3
"""Verify a Veasel macOS release archive against its tag and GitHub digests."""

from __future__ import annotations

import hashlib
import json
import os
import re
import sys
import urllib.request
from pathlib import Path
from urllib.parse import quote

API = "https://api.github.com/repos/veasel-labs/veasel"
TAG_PATTERN = re.compile(r"^v(?P<version>\d+\.\d+\.\d+(?:-next\.\d+)?)$")
SHA256_PATTERN = re.compile(r"^[0-9a-f]{64}$")
GIT_SHA_PATTERN = re.compile(r"^[0-9a-f]{40}$")


def request(url: str) -> bytes:
    headers = {
        "Accept": "application/vnd.github+json",
        "User-Agent": "veasel-homebrew-release-verifier",
        "X-GitHub-Api-Version": "2026-03-10",
    }
    token = os.environ.get("GH_TOKEN") or os.environ.get("GITHUB_TOKEN")
    if token and url.startswith("https://api.github.com/"):
        headers["Authorization"] = f"Bearer {token}"
    req = urllib.request.Request(url, headers=headers)
    with urllib.request.urlopen(req, timeout=30) as response:
        return response.read()


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def resolve_tag_commit(tag: str) -> str:
    ref = json.loads(request(f"{API}/git/ref/tags/{quote(tag, safe='')}"))
    target = ref.get("object", {})
    for _ in range(5):
        target_type = target.get("type")
        target_sha = target.get("sha")
        if not isinstance(target_sha, str) or not GIT_SHA_PATTERN.fullmatch(target_sha):
            raise ValueError("Release tag points to an invalid Git object")
        if target_type == "commit":
            return target_sha
        if target_type != "tag":
            raise ValueError("Release tag does not resolve to a commit")
        annotated = json.loads(request(f"{API}/git/tags/{target_sha}"))
        target = annotated.get("object", {})
    raise ValueError("Release tag has too many nested annotated tags")


def verify_github_asset_digest(release: dict[str, object], name: str, data: bytes) -> str:
    assets = release.get("assets")
    if not isinstance(assets, list):
        raise ValueError("GitHub release metadata has no asset list")
    matching = [item for item in assets if isinstance(item, dict) and item.get("name") == name]
    if len(matching) != 1:
        raise ValueError(f"GitHub release metadata has an ambiguous or missing {name} asset")
    digest = matching[0].get("digest")
    if not isinstance(digest, str) or not digest.startswith("sha256:"):
        raise ValueError(f"GitHub release metadata has no SHA-256 digest for {name}")
    expected = digest.removeprefix("sha256:")
    if not SHA256_PATTERN.fullmatch(expected):
        raise ValueError(f"GitHub release metadata has an invalid SHA-256 digest for {name}")
    actual = sha256(data)
    if actual != expected:
        raise ValueError(f"{name} digest does not match GitHub release metadata")
    return actual


def validate_manifest(
    manifest: dict[str, object], tag: str, source_commit: str
) -> dict[str, object]:
    matched_tag = TAG_PATTERN.fullmatch(tag)
    if matched_tag is None:
        raise ValueError(f"Unsupported Veasel tag: {tag}")
    version = matched_tag.group("version")
    if manifest.get("tag") != tag or manifest.get("version") != version:
        raise ValueError("Release manifest tag/version do not match GitHub metadata")
    if manifest.get("source_commit") != source_commit:
        raise ValueError("Release manifest source commit does not match the release tag")
    platforms = manifest.get("platforms")
    macos = platforms.get("macos") if isinstance(platforms, dict) else None
    if (
        not isinstance(macos, dict)
        or macos.get("status") != "published"
        or macos.get("ci_result") != "success"
        or macos.get("arch") != "arm64"
    ):
        raise ValueError("Release manifest does not declare a successful arm64 macOS artifact")
    assets = manifest.get("assets")
    if not isinstance(assets, list):
        raise ValueError("Release manifest has no asset list")
    matching = [
        item for item in assets
        if isinstance(item, dict) and item.get("name") == "veasel-macOS.tar.gz"
    ]
    if len(matching) != 1:
        raise ValueError("Release manifest has an ambiguous or missing macOS CLI archive")
    asset = matching[0]
    if (
        asset.get("platform") != "macos"
        or asset.get("arch") != "arm64"
        or asset.get("kind") != "cli-archive"
    ):
        raise ValueError("Release manifest macOS archive metadata is inconsistent")
    digest = asset.get("sha256")
    if not isinstance(digest, str) or not SHA256_PATTERN.fullmatch(digest):
        raise ValueError("Release manifest macOS archive has an invalid SHA-256 digest")
    return asset


def verify_release(tag: str, manifest_bytes: bytes, archive_bytes: bytes) -> str:
    if TAG_PATTERN.fullmatch(tag) is None:
        raise ValueError(f"Unsupported Veasel tag: {tag}")
    release = json.loads(request(f"{API}/releases/tags/{quote(tag, safe='')}"))
    if release.get("tag_name") != tag or release.get("draft"):
        raise ValueError("GitHub release metadata does not identify a published requested tag")
    if not isinstance(release.get("assets"), list):
        raise ValueError("GitHub release metadata has no asset list")
    verify_github_asset_digest(release, "release.json", manifest_bytes)
    source_commit = resolve_tag_commit(tag)
    try:
        manifest = json.loads(manifest_bytes)
    except json.JSONDecodeError as error:
        raise ValueError("Release manifest is not valid JSON") from error
    if not isinstance(manifest, dict):
        raise ValueError("Release manifest must be a JSON object")
    asset = validate_manifest(manifest, tag, source_commit)
    actual = verify_github_asset_digest(release, "veasel-macOS.tar.gz", archive_bytes)
    if actual != asset["sha256"]:
        raise ValueError("macOS archive digest does not match release.json")
    return actual


def main() -> None:
    if len(sys.argv) != 4:
        raise SystemExit("usage: verify_release.py <tag> <release.json> <macOS archive>")
    tag, manifest_path, archive_path = sys.argv[1:]
    digest = verify_release(
        tag,
        Path(manifest_path).read_bytes(),
        Path(archive_path).read_bytes(),
    )
    print(digest)


if __name__ == "__main__":
    main()
