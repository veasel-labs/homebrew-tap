cask "veasel-code" do
  version "0.69.17-next.0"
  sha256 "6a17db69fbdf3e8d82f00da6d1cbfed159819cb7bd703c85ba00f23f2df384c2"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.69.17-next.0/veasel-macOS.tar.gz"
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
