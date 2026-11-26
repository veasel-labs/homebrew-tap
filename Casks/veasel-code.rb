cask "veasel-code" do
  version "0.107.0-next.0"
  sha256 "835098d54f6bbc266d693cca9a97904abec6924b6959c9cc8842bac7338bf5a9"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.107.0-next.0/veasel-macOS.tar.gz"
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
