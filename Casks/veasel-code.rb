cask "veasel-code" do
  version "0.56.0-next.0"
  sha256 "940e5791a4cd15f2af9bcbbaa1deccabe0d27d58abd7718f9ce7de5bdede1094"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.56.0-next.0/veasel-macOS.tar.gz"
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
