cask "veasel-code" do
  version "0.70.0-next.0"
  sha256 "b4db7aa71cdaad87fc56ec62dd2175342f8bf186abdb94c6b4ac143af0f02ccb"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.70.0-next.0/veasel-macOS.tar.gz"
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
