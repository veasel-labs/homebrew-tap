cask "veasel-code" do
  version "0.64.6-next.0"
  sha256 "2ac636ea3bef857a159bc06cedf2531169b5d4c049ed1e3627b5af09cb97dce1"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.64.6-next.0/veasel-macOS.tar.gz"
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
