cask "veasel-code" do
  version "0.64.3-next.0"
  sha256 "cd57e0f200909f414dba8529d5e302c8ebd5809de29d3dc8b217f6a740ec892b"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.64.3-next.0/veasel-macOS.tar.gz"
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
