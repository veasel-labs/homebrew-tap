cask "veasel-code" do
  version "0.39.0-next.0"
  sha256 "32da114108a6e81f0461722a3949e3e83d18a3529f5bb39f1f36b65f35b9b846"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.39.0-next.0/veasel-macOS.tar.gz"
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
