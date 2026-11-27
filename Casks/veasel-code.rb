cask "veasel-code" do
  version "0.113.0-next.0"
  sha256 "36483d6b12b2e3ab8fb4f98e433fe26cec53ae0b35519a4c2465b125a1916ea8"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.113.0-next.0/veasel-macOS.tar.gz"
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
