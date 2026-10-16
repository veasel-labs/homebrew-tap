cask "veasel-code" do
  version "0.44.0-next.0"
  sha256 "502ab3c8eb7816ffceafbd30d2c10dab3ec06ad203ce3859563cef44bd6da6cb"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.44.0-next.0/veasel-macOS.tar.gz"
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
