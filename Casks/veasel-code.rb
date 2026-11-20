cask "veasel-code" do
  version "0.99.2-next.0"
  sha256 "5d75d225c3c2a2dcb2914b992e28becfa54ced276c41069ab167daa53167c23f"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.99.2-next.0/veasel-macOS.tar.gz"
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
