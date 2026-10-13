cask "veasel-code" do
  version "0.24.0-next.0"
  sha256 "b4c4ab00170f460f5edef4b3ae2c08854c0521a92b58a9590af739d140bb20b1"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.24.0-next.0/veasel-macOS.tar.gz"
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
