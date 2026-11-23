cask "veasel-code" do
  version "0.101.2-next.0"
  sha256 "faf5ffd89a839decdefbd1964d018070ff7b86513653b49bfda6c81826d3dd68"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.101.2-next.0/veasel-macOS.tar.gz"
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
