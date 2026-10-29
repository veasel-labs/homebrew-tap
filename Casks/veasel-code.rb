cask "veasel-code" do
  version "0.67.0-next.0"
  sha256 "9fc8ab30ad4b8dd76f4ed7f6e0f0d21d04538b8bf88d8812f563b49f103ac796"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.67.0-next.0/veasel-macOS.tar.gz"
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
