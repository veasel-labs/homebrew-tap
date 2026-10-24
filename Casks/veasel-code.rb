cask "veasel-code" do
  version "0.64.7-next.0"
  sha256 "c7333359f225ac8451df3b21cb1ee2ef90c7197ea6729c3c7d13e0e068f7ee2f"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.64.7-next.0/veasel-macOS.tar.gz"
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
