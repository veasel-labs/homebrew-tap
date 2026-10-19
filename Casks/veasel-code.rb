cask "veasel-code" do
  version "0.64.0-next.0"
  sha256 "6dfacd4c9112e44b97cd845c4fc7f88e5c8db7ee451a4fe26a500fc01db8c82e"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.64.0-next.0/veasel-macOS.tar.gz"
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
