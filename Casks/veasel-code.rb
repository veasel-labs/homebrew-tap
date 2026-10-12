cask "veasel-code" do
  version "0.19.1-next.0"
  sha256 "5ae7dc74f46397d6a245ebed22f505ecf864ef50b9474b0c82fe558f411e706a"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.19.1-next.0/veasel-macOS.tar.gz"
  name "Veasel Code"
  desc "V-native AI coding agent with a local terminal interface"
  homepage "https://veasel.dev/"

  depends_on arch: :arm64
  depends_on formula: "bun"

  binary "veasel"

  caveats <<~EOS
    Veasel Code starts or reuses its local backend when you run `veasel`.
    Press `s` in the TUI to configure a provider and model.
  EOS
end
