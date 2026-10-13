cask "veasel-code" do
  version "0.29.0-next.0"
  sha256 "8daa91b2a52f08945953e7b0cad807f5c662ee4072b585cfd9b5e104ab979700"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.29.0-next.0/veasel-macOS.tar.gz"
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
