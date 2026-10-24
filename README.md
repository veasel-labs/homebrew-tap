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
```

The current cask targets Apple Silicon Macs. The V backend and OpenTUI terminal
client are prebuilt native executables, so the installed application does not
require Bun or a V compiler. The release archive stays in Homebrew's Caskroom
so the backend can find its adjacent terminal-client executable.

Use `veasel serve` to start only the local backend. Running `veasel` starts or
reuses the loopback server, then opens the TUI. Press `s` to configure a model
provider, model, endpoint, and API key.

## Updates

The scheduled workflow checks Veasel's public releases, verifies the release
asset digest, tests the cask, and updates this tap automatically. You can
also run **Update cask** from Actions or dispatch a specific release tag.

## Release sync

The scheduled **Update cask** workflow follows the newest public Veasel release,
verifies its archive against the release manifest, then updates the cask version
and digest. The exact installed release is recorded in
[`Casks/veasel-code.rb`](Casks/veasel-code.rb), so this README does not drift
behind automated updates.

## Support

- [Veasel Code documentation](https://veasel.dev/docs/)
- [Report a tap issue](https://github.com/veasel-labs/homebrew-tap/issues)
- [License](LICENSE)
