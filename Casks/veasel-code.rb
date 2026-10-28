cask "veasel-code" do
  version "0.65.1-next.0"
  sha256 "c77dffb4668b3fc3f9426d1d7aa3a01dc49bd32e67363f3dbb1e963e0daa44ac"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.65.1-next.0/veasel-macOS.tar.gz"
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
