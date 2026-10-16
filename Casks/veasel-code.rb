cask "veasel-code" do
  version "0.45.0-next.0"
  sha256 "9120e10d2e4bd04e740f66a8fec13fb6a6a83eb710df2beb1a2e5a27d5f25052"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.45.0-next.0/veasel-macOS.tar.gz"
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
