cask "veasel-code" do
  version "0.49.1-next.0"
  sha256 "f7dd26f582cf1ff0eba5f3601d665f76febc20f5204b5315f06190738664af4d"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.49.1-next.0/veasel-macOS.tar.gz"
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
