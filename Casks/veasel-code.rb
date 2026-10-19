cask "veasel-code" do
  version "0.64.2-next.0"
  sha256 "21085a40e81fc7806c8ed3bbaa9721609b6f98abb1ca622edc4c8811b90ae759"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.64.2-next.0/veasel-macOS.tar.gz"
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
