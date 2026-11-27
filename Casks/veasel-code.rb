cask "veasel-code" do
  version "0.114.0-next.0"
  sha256 "477022124b1e8e167f33dc1dd5fce0720e834a596d0dd96d36cfa0d6990dbf26"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.114.0-next.0/veasel-macOS.tar.gz"
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
