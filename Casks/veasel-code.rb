cask "veasel-code" do
  version "0.79.9-next.0"
  sha256 "2177019448a0e17408b2b235719a527d58af1ea7d6f03948dd439d80f1c52b37"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.79.9-next.0/veasel-macOS.tar.gz"
  name "Veasel Code"
  desc "V-native AI coding agent with a local terminal interface"
  homepage "https://veasel.dev/"

  depends_on arch: :arm64

  binary "veasel"

  caveats <<~EOS
    Veasel Code starts or reuses its local backend when you run `veasel`.
    Use `/connect` in the home screen for guided provider/model setup.
    Press `n` to create a session; `s` opens advanced model settings.
  EOS
end
