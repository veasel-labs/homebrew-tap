cask "veasel-code" do
  version "0.28.1-next.0"
  sha256 "adafa660f1c8c78b1bf63860b8e5cb93ff7476456cc8a91e9b003aa8e083a74e"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.28.1-next.0/veasel-macOS.tar.gz"
  name "Veasel Code"
  desc "V-native AI coding agent with a local terminal interface"
  homepage "https://veasel.dev/"

  depends_on arch: :arm64

  binary "veasel"

  caveats <<~EOS
    Veasel Code starts or reuses its local backend when you run `veasel`.
    Press `s` in the TUI to configure a provider and model.
  EOS
end
