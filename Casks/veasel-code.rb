cask "veasel-code" do
  version "0.100.1-next.0"
  sha256 "d2c8c0f529a2d8ef17cbb9c5d4cc75d02ebf69d8ada702b287c3fb988194d5fd"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.100.1-next.0/veasel-macOS.tar.gz"
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
