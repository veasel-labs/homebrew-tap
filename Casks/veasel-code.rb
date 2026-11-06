cask "veasel-code" do
  version "0.69.6-next.0"
  sha256 "41350a613c36b1a9f21b34e925135406ae0a9275f261d4a98113a43ad64c845b"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.69.6-next.0/veasel-macOS.tar.gz"
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
