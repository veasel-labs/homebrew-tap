cask "veasel-code" do
  version "0.64.5-next.0"
  sha256 "b450d4383aff93c3fc27100427aa8ee01ef0906dcb22fff72b06287a037b2745"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.64.5-next.0/veasel-macOS.tar.gz"
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
