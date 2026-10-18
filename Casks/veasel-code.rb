cask "veasel-code" do
  version "0.55.0-next.0"
  sha256 "766aebbf662c04083c3b7c53dfa559f4099855d387f1bbfce1535868769cb07b"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.55.0-next.0/veasel-macOS.tar.gz"
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
