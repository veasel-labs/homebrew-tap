cask "veasel-code" do
  version "0.98.0-next.0"
  sha256 "ac3887c84e554be4d6fe40d351ff4a5354dfad7551dee6b057f6e05c55dc879d"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.98.0-next.0/veasel-macOS.tar.gz"
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
