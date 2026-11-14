cask "veasel-code" do
  version "0.79.7-next.0"
  sha256 "fbfef187fd2fc02a10f38a6997fe61e5b45ae893081518b5a7da234e21bd0f24"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.79.7-next.0/veasel-macOS.tar.gz"
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
