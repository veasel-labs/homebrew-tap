cask "veasel-code" do
  version "0.27.1-next.0"
  sha256 "59e70fe4e0d6304355896b9a55f2892a1a9606fa9fa0bdca3024d24a4e49cfe5"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.27.1-next.0/veasel-macOS.tar.gz"
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
