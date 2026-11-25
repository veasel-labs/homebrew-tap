cask "veasel-code" do
  version "0.103.1-next.0"
  sha256 "dfd8051cf475ab64f2383d0d0ce6c420c4d1340d5de5f9cca7130f18adba9056"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.103.1-next.0/veasel-macOS.tar.gz"
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
