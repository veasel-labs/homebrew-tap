cask "veasel-code" do
  version "0.65.0-next.0"
  sha256 "fc12062ae931422951010bd7e8b099b308261627dbe152c6a40eaa538d24d1bb"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.65.0-next.0/veasel-macOS.tar.gz"
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
