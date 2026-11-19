cask "veasel-code" do
  version "0.96.9-next.0"
  sha256 "d9dfe5cc0f31dad0903ec932ee4f20cfa99849f1aa31d7ca8b7084164c641a58"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.96.9-next.0/veasel-macOS.tar.gz"
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
