cask "veasel-code" do
  version "0.91.0-next.0"
  sha256 "e4a30da14b5fda370333aa240312b2581f0ca4b51dc5ee39af9afedfd9d6ba20"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.91.0-next.0/veasel-macOS.tar.gz"
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
