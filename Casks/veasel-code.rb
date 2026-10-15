cask "veasel-code" do
  version "0.36.0-next.0"
  sha256 "fc3cd348f965728bce9d19cd0b79908d4b9a7df6da18ad422a65bbc77e4a6260"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.36.0-next.0/veasel-macOS.tar.gz"
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
