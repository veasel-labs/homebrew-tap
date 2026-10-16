cask "veasel-code" do
  version "0.46.0-next.0"
  sha256 "19a706a2fd37636bf4ebb4103f0e5f621eb84aeeb50df57e4f80931c2237b321"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.46.0-next.0/veasel-macOS.tar.gz"
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
