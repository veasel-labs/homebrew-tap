cask "veasel-code" do
  version "0.101.3-next.0"
  sha256 "2aa33d87f8eb74bd8a5c6d7bd70a16b9e1210d5c43dc990a9b68a7eaded1b280"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.101.3-next.0/veasel-macOS.tar.gz"
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
