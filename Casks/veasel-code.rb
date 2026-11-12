cask "veasel-code" do
  version "0.69.16-next.0"
  sha256 "5b208a9367e454f7d4343829adf9b647477fa724890852a1a695f4a086bda4c8"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.69.16-next.0/veasel-macOS.tar.gz"
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
