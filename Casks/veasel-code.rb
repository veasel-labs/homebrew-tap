cask "veasel-code" do
  version "0.103.2-next.0"
  sha256 "ede4d68688e2bf8eaf240cf594e3d585fbb150b16e47dbd27d452fd0c4f69a6e"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.103.2-next.0/veasel-macOS.tar.gz"
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
