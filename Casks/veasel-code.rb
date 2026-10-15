cask "veasel-code" do
  version "0.37.0-next.0"
  sha256 "623a2cbab4e75c29183f27515d7de3ae42297e56bda7eedf9bdd8beda8a510ba"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.37.0-next.0/veasel-macOS.tar.gz"
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
