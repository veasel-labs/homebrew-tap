cask "veasel-code" do
  version "0.34.0-next.0"
  sha256 "26928e4009c254c20aed10bccae9e1ccd55cfafc80eddf1e38e23337ee548b1d"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.34.0-next.0/veasel-macOS.tar.gz"
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
