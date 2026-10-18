cask "veasel-code" do
  version "0.58.0-next.0"
  sha256 "64589b04f2c1a91155f00ac791829ed11c2780c7af5882010dee949d9fe97e1f"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.58.0-next.0/veasel-macOS.tar.gz"
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
