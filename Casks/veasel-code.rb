cask "veasel-code" do
  version "0.24.1-next.0"
  sha256 "01eaf71df0d5c4d92a7a4ed8cb5de5b64ce938bceca7f6fbd075c6ea9eaab680"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.24.1-next.0/veasel-macOS.tar.gz"
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
