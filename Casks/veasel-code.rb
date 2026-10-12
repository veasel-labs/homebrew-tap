cask "veasel-code" do
  version "0.17.2-next.0"
  sha256 "7103e0b96cfa3587f1d6daab2e37323cdd54a65771db87b5714bf69c18d6c6dc"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.17.2-next.0/veasel-macOS.tar.gz"
  name "Veasel Code"
  desc "V-native AI coding agent with a local terminal interface"
  homepage "https://veasel.dev/"

  depends_on arch: :arm64
  depends_on formula: "bun"

  binary "veasel"

  caveats <<~EOS
    Veasel Code starts or reuses its local backend when you run `veasel`.
    Press `s` in the TUI to configure a provider and model.
  EOS
end
