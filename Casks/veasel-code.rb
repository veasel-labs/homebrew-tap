cask "veasel-code" do
  version "0.103.3-next.0"
  sha256 "fe4cb434dd772952390f52be2d7167d2b960c2b03980486fbc11090ffe68bd05"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.103.3-next.0/veasel-macOS.tar.gz"
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
