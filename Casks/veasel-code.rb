cask "veasel-code" do
  version "0.66.0-next.0"
  sha256 "51f28686a881bfd0e71ff2be1a89912c92f939bc28158dbd0f45444521fadcd9"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.66.0-next.0/veasel-macOS.tar.gz"
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
