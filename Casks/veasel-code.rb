cask "veasel-code" do
  version "0.96.3-next.0"
  sha256 "cc7d80daf8a608768a604b81865bf3ca42fa07578211db60bd20bd83ec899e12"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.96.3-next.0/veasel-macOS.tar.gz"
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
