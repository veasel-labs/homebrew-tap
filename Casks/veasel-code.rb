cask "veasel-code" do
  version "0.106.0-next.0"
  sha256 "c6055f272d00edd14b27cf05a7284da7aa2a575c8df0993cf45b7bb46a914520"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.106.0-next.0/veasel-macOS.tar.gz"
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
