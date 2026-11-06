cask "veasel-code" do
  version "0.69.7-next.0"
  sha256 "0293b08a32ac64acc289859ce5246955f3c62fa75772b0d55a351d92320def5a"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.69.7-next.0/veasel-macOS.tar.gz"
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
