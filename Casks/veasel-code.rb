cask "veasel-code" do
  version "0.102.1-next.0"
  sha256 "1bf772ddd6ee40a113946e1a76a4ca16c74f390cd9cb9f5c886456fbbf1dc561"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.102.1-next.0/veasel-macOS.tar.gz"
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
