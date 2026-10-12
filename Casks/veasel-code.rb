cask "veasel-code" do
  version "0.17.0-next.0"
  sha256 "994735b6123a744bbdb94e7488de7afe9e6bf69058f57f0ca08f007802f464df"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.17.0-next.0/veasel-macOS.tar.gz"
  name "Veasel Code"
  desc "V-native AI coding agent with a local terminal interface"
  homepage "https://veasel.dev/"

  depends_on arch: :arm64
  depends_on formula: "bun"

  binary "veasel"

  caveats <<~EOS
    Veasel Code starts or reuses its local backend when you run `veasel`.
    Press `s` in the TUI to configure a provider and model.
  EOS
end
