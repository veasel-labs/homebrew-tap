cask "veasel-desktop" do
  version "0.109.1-next.0"
  sha256 "1117b2e38537afb4ec0ba51b534b3001e752606ce5739073e7043c22519bc225"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.109.1-next.0/veasel-desktop-0.109.1-next.0-mac-arm64.dmg"
  name "Veasel Desktop"
  desc "Local-first coding workspace with Focus and World"
  homepage "https://veasel.dev/"

  depends_on arch: :arm64
  depends_on :macos

  app "Veasel.app"

  caveats <<~EOS
    The release manifest marks this installer unsigned.
    macOS may ask you to approve opening it.
    Veasel Desktop bundles its own local Veasel backend.
    Install veasel-code separately if you also want the CLI and terminal interface.
  EOS
end
