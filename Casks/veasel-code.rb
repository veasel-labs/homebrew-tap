cask "veasel-code" do
  version "0.76.0-next.0"
  sha256 "88d98e03b08da36e8853874c36a4b11f60c6dc0e2250fa8bbc84336301b641ad"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.76.0-next.0/veasel-macOS.tar.gz"
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
