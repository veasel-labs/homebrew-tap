cask "veasel-code" do
  version "0.115.2-next.0"
  sha256 "90a885d66d485adc0bfef3edd004c7877f6b1b18d1c1dfaaa8a9981e8f7a60d8"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.115.2-next.0/veasel-macOS.tar.gz"
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
