cask "veasel-code" do
  version "0.69.13-next.0"
  sha256 "5be3c0b66f10a953b4ba52f1f5a5f4dffb25b5f15b2935a86c4ad6ac360b8db2"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.69.13-next.0/veasel-macOS.tar.gz"
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
