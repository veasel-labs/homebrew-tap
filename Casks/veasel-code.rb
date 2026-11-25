cask "veasel-code" do
  version "0.105.0-next.0"
  sha256 "d9794e709c3aae56f5da04ca2268e77d7863ab9785b22c421d7b46037dfeee54"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.105.0-next.0/veasel-macOS.tar.gz"
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
