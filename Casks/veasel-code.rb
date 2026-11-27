cask "veasel-code" do
  version "0.114.1-next.0"
  sha256 "92d1508210ccbe8b76d6f514448e8c0a6383a21fbf885f8eb9c6c870bca51f6d"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.114.1-next.0/veasel-macOS.tar.gz"
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
