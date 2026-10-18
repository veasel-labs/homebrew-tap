cask "veasel-code" do
  version "0.59.0-next.0"
  sha256 "f02ad292316e3c614bbcea55e78a52542ed436233c34febf567df50fe9aeeffa"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.59.0-next.0/veasel-macOS.tar.gz"
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
