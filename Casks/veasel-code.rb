cask "veasel-code" do
  version "0.17.1-next.0"
  sha256 "05e2b55ec4d5287fc65afc3730870f92280d8debc18e674379200c2ccbafb0aa"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.17.1-next.0/veasel-macOS.tar.gz"
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
