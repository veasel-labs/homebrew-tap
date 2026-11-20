cask "veasel-code" do
  version "0.100.0-next.0"
  sha256 "5deb7871ad9e2794f4735138c9dee1c6a0fecd7d2cb64795a3d2d348712151a2"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.100.0-next.0/veasel-macOS.tar.gz"
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
