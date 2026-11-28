cask "veasel-code" do
  version "0.117.1-next.0"
  sha256 "a9b2ea4d038d3f2d9066bb210f0e93c46eebc07dc7aa51ef0f9c76f787a74675"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.117.1-next.0/veasel-macOS.tar.gz"
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
