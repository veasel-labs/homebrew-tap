cask "veasel-code" do
  version "0.42.0-next.0"
  sha256 "dc0ae610f7598a58db8151c1b89daddc63dff3d613845bc96af79d0fd85ba930"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.42.0-next.0/veasel-macOS.tar.gz"
  name "Veasel Code"
  desc "V-native AI coding agent with a local terminal interface"
  homepage "https://veasel.dev/"

  depends_on arch: :arm64

  binary "veasel"

  caveats <<~EOS
    Veasel Code starts or reuses its local backend when you run `veasel`.
    Press `s` in the TUI to configure a provider and model.
  EOS
end
