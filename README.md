# Veasel Code Homebrew Tap

[![CI](https://github.com/veasel-labs/homebrew-tap/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/veasel-labs/homebrew-tap/actions/workflows/ci.yml)
[![Veasel Code](https://img.shields.io/github/v/release/veasel-labs/veasel?include_prereleases&label=Veasel%20Code)](https://github.com/veasel-labs/veasel/releases)
[![License: MIT](https://img.shields.io/badge/license-MIT-4b6b52.svg)](LICENSE)

Official Homebrew distribution for [Veasel Code](https://veasel.dev), the
V-native coding agent.

## Install

```sh
brew tap veasel-labs/tap
brew install --cask veasel-code
veasel

# Optional graphical application
brew install --cask veasel-desktop
```

`veasel-code` is the Apple Silicon CLI/TUI cask. The V backend and OpenTUI
terminal client are prebuilt native executables, so they do not require Bun or a
V compiler. The release archive stays in Homebrew's Caskroom so the backend can
find its adjacent terminal-client executable.

`veasel-desktop` is a separate optional cask for the Apple Silicon Desktop app
with Focus and World. It bundles the local V backend and does not replace or
modify the CLI/TUI cask. The cask follows each release manifest's signature status; macOS may ask
you to approve opening an unsigned preview.

Use `veasel serve` to start only the local backend. Running `veasel` starts or
reuses the loopback server, then opens the TUI. At the home screen, type
`/connect` for guided provider and model setup, then press `n` to create a
project session. Press `s` only when you want advanced provider/model settings
(including endpoint overrides).

## Updates

The scheduled workflow checks Veasel's public releases, verifies the release
manifest and macOS archive against GitHub's asset digests, verifies the
manifest source commit against the release tag, tests the cask, and opens a
draft PR with the update. A human
reviews and merges the change before it reaches this tap. You can also run
**Update cask** from Actions or dispatch a specific release tag.

The updater reuses an open proposal for the same release. After a newer
proposal passes exact-head macOS CI, it closes only stale, bot-generated cask
PRs that change no other files and links each closure to the replacement.

## Release sync

The scheduled **Update cask** workflow follows the newest public Veasel release,
verifies its CLI archive and Desktop DMG against the release manifest and
GitHub's asset digests, then proposes both cask versions and digests in a draft
PR. The updater also checks the exact tag source commit. The current CLI/TUI
release is recorded in [`Casks/veasel-code.rb`](Casks/veasel-code.rb); the
optional Desktop release is recorded in
[`Casks/veasel-desktop.rb`](Casks/veasel-desktop.rb).

## Support

- [Veasel Code documentation](https://veasel.dev/docs/)
- [Report a tap issue](https://github.com/veasel-labs/homebrew-tap/issues)
- [License](LICENSE)
