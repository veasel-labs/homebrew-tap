cask "veasel-code" do
  version "0.30.0-next.0"
  sha256 "0a6bf382f1575d0a3119150b9ce2f2130991d06a38df13575113298ca52a5c5c"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.30.0-next.0/veasel-macOS.tar.gz"
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
