cask "veasel-code" do
  version "0.69.14-next.0"
  sha256 "2232ab62b202c8132889bc926e4a04bde6eb1c43c530dd1cfa24b01e8bef5911"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.69.14-next.0/veasel-macOS.tar.gz"
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
