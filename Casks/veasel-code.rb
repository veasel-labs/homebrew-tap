cask "veasel-code" do
  version "0.118.0-next.0"
  sha256 "ea26a81f996f908e26d07462cc64c2c7f994ef23ddafc7e3f6159a95119dfcb2"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.118.0-next.0/veasel-macOS.tar.gz"
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
