cask "veasel-code" do
  version "0.69.9-next.0"
  sha256 "2d85f16ede8edd7ee34c4e8f1063fb70eb36366de3ca347ea317d7fafe8d1893"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.69.9-next.0/veasel-macOS.tar.gz"
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
