cask "veasel-code" do
  version "0.26.0-next.0"
  sha256 "e78683358094bcc59f9b0244f5bb1df53d689b0fd72800c08190d83287425296"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.26.0-next.0/veasel-macOS.tar.gz"
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
