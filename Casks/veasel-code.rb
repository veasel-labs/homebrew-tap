cask "veasel-code" do
  version "0.77.0-next.0"
  sha256 "916384131dc24be4c20ae8f80b04248bde2839e4f85c156d645de8c3120ecfa0"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.77.0-next.0/veasel-macOS.tar.gz"
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
