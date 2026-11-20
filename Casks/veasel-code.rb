cask "veasel-code" do
  version "0.97.0-next.0"
  sha256 "4ecdc780402a2e6c6639c0b01ef561bdab38f96499918ebc613d38d25256afbb"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.97.0-next.0/veasel-macOS.tar.gz"
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
