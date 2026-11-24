cask "veasel-code" do
  version "0.102.4-next.0"
  sha256 "fd2af2e377bd81b18efafd7c4ec90d77a6ef1e94216490191c1b0235c16029e9"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.102.4-next.0/veasel-macOS.tar.gz"
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
