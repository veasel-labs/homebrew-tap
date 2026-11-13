cask "veasel-code" do
  version "0.78.0-next.0"
  sha256 "d1f465669966b955ecedc8145016734ed6182e1819b9211539db23329a299756"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.78.0-next.0/veasel-macOS.tar.gz"
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
