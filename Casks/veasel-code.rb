cask "veasel-code" do
  version "0.61.0-next.0"
  sha256 "bf26b77a65aa2be06555f43822f86351245f689c23b01e2fcf32397c7cef921d"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.61.0-next.0/veasel-macOS.tar.gz"
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
