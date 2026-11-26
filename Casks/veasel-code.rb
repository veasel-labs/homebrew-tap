cask "veasel-code" do
  version "0.106.3-next.0"
  sha256 "201f3946dda2a25faf3a8764ba95b7292a259c0b8d78bad8e913e22ecd79b56d"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.106.3-next.0/veasel-macOS.tar.gz"
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
