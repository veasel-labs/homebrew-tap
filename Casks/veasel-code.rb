cask "veasel-code" do
  version "0.28.0-next.0"
  sha256 "3b5b63694ce1f72ead3dbfcedbf271d0d6c2eebb058dfce2840458db1a303d2e"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.28.0-next.0/veasel-macOS.tar.gz"
  name "Veasel Code"
  desc "V-native AI coding agent with a local terminal interface"
  homepage "https://veasel.dev/"

  depends_on arch: :arm64

  binary "veasel"

  caveats <<~EOS
    Veasel Code starts or reuses its local backend when you run `veasel`.
    Press `s` in the TUI to configure a provider and model.
  EOS
end
