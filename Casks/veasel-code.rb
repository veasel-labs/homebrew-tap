cask "veasel-code" do
  version "0.79.6-next.0"
  sha256 "bf589c071ca912027ac3fce4ce8c2c867ad1b12f505d8883efb1f2380f566ad5"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.79.6-next.0/veasel-macOS.tar.gz"
  name "Veasel Code"
  desc "V-native AI coding agent with a local terminal interface"
  homepage "https://veasel.dev/"

  depends_on arch: :arm64

  binary "veasel"

  caveats <<~EOS
    Veasel Code starts or reuses its local backend when you run `veasel`.
    Use `/connect` in the home screen for guided provider/model setup.
    Press `n` to create a session; `s` opens advanced model settings.
  EOS
end
