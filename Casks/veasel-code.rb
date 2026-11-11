cask "veasel-code" do
  version "0.69.15-next.0"
  sha256 "9948c3e88d96a6662d939ec29f39650bf1ffc4459bb9a959a8ac136247e66e27"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.69.15-next.0/veasel-macOS.tar.gz"
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
