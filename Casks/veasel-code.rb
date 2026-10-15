cask "veasel-code" do
  version "0.38.0-next.0"
  sha256 "78f1f45a2565edf19ca70d8c70f393f7293ddb86fe53d575e851c8d8df7ee0df"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.38.0-next.0/veasel-macOS.tar.gz"
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
