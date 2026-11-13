cask "veasel-code" do
  version "0.79.5-next.0"
  sha256 "9be7a13caa2abcff547a650da711cee0ca6a335e3c7fba6bc0275dc3287bf6f6"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.79.5-next.0/veasel-macOS.tar.gz"
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
