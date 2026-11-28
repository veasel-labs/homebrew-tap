cask "veasel-desktop" do
  version "0.117.1-next.0"
  sha256 "72f30ebb2f281e76be195a885d4b0f40d0881e26f85439642ad105e24f9a5970"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.117.1-next.0/veasel-desktop-0.117.1-next.0-mac-arm64.dmg"
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
