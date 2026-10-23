cask "veasel-code" do
  version "0.64.4-next.0"
  sha256 "bd7a5a09967ed9ecab538ec8b32591086cee48167fb2bc8c2560eb51b7467dc6"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.64.4-next.0/veasel-macOS.tar.gz"
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
