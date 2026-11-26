cask "veasel-code" do
  version "0.107.1-next.0"
  sha256 "6ecd3bcfe066d31459143cfdc07ad24d68868085f1b889ad51c90bd4a5a1281a"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.107.1-next.0/veasel-macOS.tar.gz"
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
