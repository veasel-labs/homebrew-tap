cask "veasel-code" do
  version "0.69.11-next.0"
  sha256 "ad71b3cf0b91deebaf2131cb8b34ad2f540f2c26d71b1823d9205cdf38f3a0f6"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.69.11-next.0/veasel-macOS.tar.gz"
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
