cask "veasel-code" do
  version "0.52.3-next.0"
  sha256 "6f3def5482942dde8579d12392cf3d9a0fac240d770e9b7ad07ce9654747156e"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.52.3-next.0/veasel-macOS.tar.gz"
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
