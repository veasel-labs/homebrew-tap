cask "veasel-code" do
  version "0.77.1-next.0"
  sha256 "d3f417d93e61b8939677945bc5903354030ad74a2dc5c2af0df9530c13341374"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.77.1-next.0/veasel-macOS.tar.gz"
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
