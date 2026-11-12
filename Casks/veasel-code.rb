cask "veasel-code" do
  version "0.74.0-next.0"
  sha256 "e3c95e00bce51b09d15a1fb4c89860410e3cc0b8cdd463fed8a0d24f8b2808ad"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.74.0-next.0/veasel-macOS.tar.gz"
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
