cask "veasel-code" do
  version "0.23.0-next.0"
  sha256 "71614a6eb1785b634427b129f83b1973a1e9d8abd997152502770182297dc531"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.23.0-next.0/veasel-macOS.tar.gz"
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
