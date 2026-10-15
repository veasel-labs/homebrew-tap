cask "veasel-code" do
  version "0.41.0-next.0"
  sha256 "eaf46c4d31450c8ec32127d3dda99c38ac58e7d62afaf385f8766ea4a3b66f79"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.41.0-next.0/veasel-macOS.tar.gz"
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
