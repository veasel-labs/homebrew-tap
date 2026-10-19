cask "veasel-code" do
  version "0.60.0-next.0"
  sha256 "6de31454cdeed9b593c3d13052e3d7ed8e03d0bc8b911157f85db57be94cd56a"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.60.0-next.0/veasel-macOS.tar.gz"
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
