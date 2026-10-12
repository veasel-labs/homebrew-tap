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

The current cask targets Apple Silicon Macs. Bun is installed as a runtime
dependency for the OpenTUI terminal client. The V backend is a native binary
and does not require a V compiler. The release archive stays in Homebrew's
Caskroom so bundled macOS native modules keep their upstream `@rpath` install
names intact.

Use `veasel serve` to start only the local backend. Running `veasel` starts or
reuses the loopback server, then opens the TUI. Press `s` to configure a model
provider, model, endpoint, and API key.

## Updates

The scheduled workflow checks Veasel's public releases, verifies the release
asset digest, tests the formula, and updates this tap automatically. You can
also run **Update formula** from Actions or dispatch a specific release tag.

## Support

- [Veasel Code documentation](https://veasel.dev/docs/)
- [Report a tap issue](https://github.com/veasel-labs/homebrew-tap/issues)
- [License](LICENSE)
