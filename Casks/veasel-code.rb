cask "veasel-code" do
  version "0.71.1-next.0"
  sha256 "36634c435a4bf5f0137e88c68a9895deec39d38866a322a120bf0d08465a8171"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.71.1-next.0/veasel-macOS.tar.gz"
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
