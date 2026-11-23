import importlib.util
import json
import unittest
from pathlib import Path
from unittest.mock import patch


SCRIPT = Path(__file__).with_name("verify_release.py")
SPEC = importlib.util.spec_from_file_location("verify_release", SCRIPT)
assert SPEC is not None and SPEC.loader is not None
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


class VerifyReleaseTests(unittest.TestCase):
    def setUp(self):
        self.tag = "v1.2.3-next.0"
        self.commit = "a" * 40
        self.manifest_bytes = b"release manifest fixture"
        self.archive_bytes = b"macOS release archive fixture"
        self.manifest = {
            "tag": self.tag,
            "version": "1.2.3-next.0",
            "source_commit": self.commit,
            "platforms": {
                "macos": {"status": "published", "ci_result": "success", "arch": "arm64"}
            },
            "assets": [
                {
                    "name": "veasel-macOS.tar.gz",
                    "platform": "macos",
                    "arch": "arm64",
                    "kind": "cli-archive",
                    "sha256": MODULE.sha256(self.archive_bytes),
                }
            ],
        }
        self.release = {
            "tag_name": self.tag,
            "draft": False,
            "assets": [
                {
                    "name": "release.json",
                    "digest": f"sha256:{MODULE.sha256(self.manifest_bytes)}",
                },
                {
                    "name": "veasel-macOS.tar.gz",
                    "digest": f"sha256:{MODULE.sha256(self.archive_bytes)}",
                },
            ],
        }
        self.responses = {
            f"{MODULE.API}/git/ref/tags/{self.tag}": json.dumps(
                {"object": {"type": "commit", "sha": self.commit}}
            ).encode(),
        }

    def update_api_responses(self):
        self.release["assets"][0]["digest"] = f"sha256:{MODULE.sha256(self.manifest_bytes)}"
        self.release["assets"][1]["digest"] = f"sha256:{MODULE.sha256(self.archive_bytes)}"
        self.responses[f"{MODULE.API}/releases/tags/{self.tag}"] = json.dumps(self.release).encode()

    def test_release_requires_github_asset_digests_and_matching_tag_commit(self):
        self.manifest_bytes = json.dumps(self.manifest).encode()
        self.update_api_responses()
        with patch.object(MODULE, "request", side_effect=lambda url: self.responses[url]):
            self.assertEqual(
                MODULE.verify_release(self.tag, self.manifest_bytes, self.archive_bytes),
                MODULE.sha256(self.archive_bytes),
            )

    def test_release_rejects_manifest_digest_mismatch(self):
        self.manifest_bytes = json.dumps(self.manifest).encode()
        self.update_api_responses()
        self.release["assets"][0]["digest"] = "sha256:" + "0" * 64
        self.responses[f"{MODULE.API}/releases/tags/{self.tag}"] = json.dumps(self.release).encode()
        with patch.object(MODULE, "request", side_effect=lambda url: self.responses[url]):
            with self.assertRaisesRegex(ValueError, "release.json digest"):
                MODULE.verify_release(self.tag, self.manifest_bytes, self.archive_bytes)

    def test_release_rejects_tag_source_mismatch(self):
        self.manifest["source_commit"] = "b" * 40
        self.manifest_bytes = json.dumps(self.manifest).encode()
        self.update_api_responses()
        with patch.object(MODULE, "request", side_effect=lambda url: self.responses[url]):
            with self.assertRaisesRegex(ValueError, "source commit"):
                MODULE.verify_release(self.tag, self.manifest_bytes, self.archive_bytes)

    def test_release_rejects_archive_digest_mismatch(self):
        self.manifest_bytes = json.dumps(self.manifest).encode()
        self.update_api_responses()
        with patch.object(MODULE, "request", side_effect=lambda url: self.responses[url]):
            with self.assertRaisesRegex(ValueError, "does not match GitHub"):
                MODULE.verify_release(self.tag, self.manifest_bytes, b"tampered")

    def test_release_rejects_unpublished_platform(self):
        self.manifest["platforms"]["macos"]["status"] = "failed"
        self.manifest_bytes = json.dumps(self.manifest).encode()
        self.update_api_responses()
        with patch.object(MODULE, "request", side_effect=lambda url: self.responses[url]):
            with self.assertRaisesRegex(ValueError, "does not declare a successful"):
                MODULE.verify_release(self.tag, self.manifest_bytes, self.archive_bytes)

    def test_invalid_tag_is_rejected_before_network_request(self):
        with patch.object(MODULE, "request") as request:
            with self.assertRaisesRegex(ValueError, "Unsupported Veasel tag"):
                MODULE.verify_release("v1.2.3/next", self.manifest_bytes, self.archive_bytes)
        request.assert_not_called()


if __name__ == "__main__":
    unittest.main()
