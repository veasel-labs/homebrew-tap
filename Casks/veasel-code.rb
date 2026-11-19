cask "veasel-code" do
  version "0.96.12-next.0"
  sha256 "15810f7bb3d298d8b7ce4fe05898635d6200255cb00555ace515b1770561ff61"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.96.12-next.0/veasel-macOS.tar.gz"
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
