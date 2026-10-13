cask "veasel-code" do
  version "0.27.0-next.0"
  sha256 "1d1bf2c56e03ed63df9ec25d147b686cb49f5aacba9069fe3f5193d4e8e248f4"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.27.0-next.0/veasel-macOS.tar.gz"
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
