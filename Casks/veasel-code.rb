cask "veasel-code" do
  version "0.34.1-next.0"
  sha256 "418e6cd4c0756a873c7333fba64f9de314a65fc387d5b3581b04899dc8448010"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.34.1-next.0/veasel-macOS.tar.gz"
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
