cask "veasel-code" do
  version "0.67.1-next.0"
  sha256 "0b6e59c0dbb62c28c264b77a5df86c36f4ba8d4cf77ad8068a5c2818f211b5b1"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.67.1-next.0/veasel-macOS.tar.gz"
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
