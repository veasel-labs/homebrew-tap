cask "veasel-code" do
  version "0.93.0-next.0"
  sha256 "7047c5795c825396247c61dbccb0f36d72b1f3e4d4f2d72e5e31e3368442dcbc"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.93.0-next.0/veasel-macOS.tar.gz"
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
