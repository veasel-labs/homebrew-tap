cask "veasel-desktop" do
  version "0.105.0-next.0"
  sha256 "1690fc97fe38a6a6ae17e31fd83753fe77814b9385bff7c4af22824086cac7f6"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.105.0-next.0/veasel-desktop-0.105.0-next.0-mac-arm64.dmg"
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
