cask "veasel-code" do
  version "0.57.0-next.0"
  sha256 "6093b59f74bae9b31b0590ab8c874c78e6ce558ec4249827bd0b71bf39fb411b"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.57.0-next.0/veasel-macOS.tar.gz"
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
