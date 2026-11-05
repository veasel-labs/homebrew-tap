cask "veasel-code" do
  version "0.68.0-next.0"
  sha256 "663e3c0103de25722bf5b1f0769be007dbaf2d617d0ef758e1b36643a6134162"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.68.0-next.0/veasel-macOS.tar.gz"
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
