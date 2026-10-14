cask "veasel-code" do
  version "0.31.0-next.0"
  sha256 "7685f645dbba02633446d2647e0000122d3fe85431eb0f998929131e08e902be"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.31.0-next.0/veasel-macOS.tar.gz"
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
