cask "veasel-code" do
  version "0.47.0-next.0"
  sha256 "67211e8197ea6a6396f16af19422f6b4f39f830a3f23b9907d478f95b0a429b3"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.47.0-next.0/veasel-macOS.tar.gz"
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
