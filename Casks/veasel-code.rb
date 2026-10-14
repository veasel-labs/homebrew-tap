cask "veasel-code" do
  version "0.33.0-next.0"
  sha256 "47b56a46ec4d09fc1a80d3103a1f030e6642ead61372cae4e4a14242e55bd763"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.33.0-next.0/veasel-macOS.tar.gz"
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
