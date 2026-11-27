cask "veasel-code" do
  version "0.109.1-next.0"
  sha256 "c93c342e2f17291c74240ec04e955f558b2d636856730ae25e0c1b64eb7dbb1b"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.109.1-next.0/veasel-macOS.tar.gz"
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
