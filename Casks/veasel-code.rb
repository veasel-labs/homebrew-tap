cask "veasel-code" do
  version "0.69.0-next.0"
  sha256 "7f884f924a72f2fbcb134a5b3eceb4ada053607e573c2545b8595e0d47e2f856"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.69.0-next.0/veasel-macOS.tar.gz"
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
