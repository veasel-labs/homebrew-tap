cask "veasel-code" do
  version "0.106.2-next.0"
  sha256 "76dadad0b200ddf7fec4dd1720ee9ffedb56da9064031822b5f4f96d3b4825ac"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.106.2-next.0/veasel-macOS.tar.gz"
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
