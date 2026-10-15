cask "veasel-code" do
  version "0.35.0-next.0"
  sha256 "1e9f3c26b3f8a7d0b4bba7cafa8132f985dda134d5dbf7e8511df77acc91af0b"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.35.0-next.0/veasel-macOS.tar.gz"
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
