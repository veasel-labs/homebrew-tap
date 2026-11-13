cask "veasel-code" do
  version "0.79.0-next.0"
  sha256 "649d88d0e9874c69e5532aeb10ae66b7e7c0132bec89e01dd445379e597a34a2"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.79.0-next.0/veasel-macOS.tar.gz"
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
