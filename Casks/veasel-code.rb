cask "veasel-code" do
  version "0.69.8-next.0"
  sha256 "6c89cf1424157dc897e101086df7b3dfe073a353afd661230d9c2cb9a6f2a6e8"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.69.8-next.0/veasel-macOS.tar.gz"
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
