cask "veasel-code" do
  version "0.52.0-next.0"
  sha256 "363d289d1d3903e7eb2aa1de4452049c6dd3787d231ae7c1fa94ed6655611e7a"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.52.0-next.0/veasel-macOS.tar.gz"
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
