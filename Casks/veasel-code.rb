cask "veasel-code" do
  version "0.64.1-next.0"
  sha256 "9c464aae8564e94a02de5f3709a9a9eb220c825e80222267166a95ed4467a2ad"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.64.1-next.0/veasel-macOS.tar.gz"
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
