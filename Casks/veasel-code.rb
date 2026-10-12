cask "veasel-code" do
  version "0.15.0-next.0"
  sha256 "0fd1bf643a5036c518dd0deb49fa6a14329ed4c766225eac71ca7f81c2bff9e0"

  url "https://github.com/veasel-labs/veasel/releases/download/v#{version}/veasel-macOS.tar.gz"
  name "Veasel Code"
  desc "V-native AI coding agent with a local terminal interface"
  homepage "https://veasel.dev/"

  depends_on arch: :arm64
  depends_on formula: "bun"

  binary "veasel"

  caveats <<~EOS
    Veasel Code starts or reuses its local backend when you run `veasel`.
    Press `s` in the TUI to configure a provider and model.
  EOS
end
