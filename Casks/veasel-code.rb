cask "veasel-code" do
  version "0.49.0-next.0"
  sha256 "078ab3db07228494626d5004f051b84ac3f22b03df30c842cf145bb2e786f50c"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.49.0-next.0/veasel-macOS.tar.gz"
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
