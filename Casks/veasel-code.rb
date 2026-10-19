cask "veasel-code" do
  version "0.62.0-next.0"
  sha256 "1d646a75700268e5bc1daaeedd8f7168b70a57905e8db6c161f7362ea2611f13"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.62.0-next.0/veasel-macOS.tar.gz"
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
