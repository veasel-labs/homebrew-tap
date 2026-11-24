cask "veasel-code" do
  version "0.102.3-next.0"
  sha256 "ba3be0f8fc096eaf14d8b124bd55f4560c729aac126e79f2a2f442b0f81c524b"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.102.3-next.0/veasel-macOS.tar.gz"
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
