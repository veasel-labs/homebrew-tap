cask "veasel-code" do
  version "0.111.0-next.0"
  sha256 "f245cc7e9c33e18dff9a6810c79e316419c0006afacc21cc2e985f55b5b16581"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.111.0-next.0/veasel-macOS.tar.gz"
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
