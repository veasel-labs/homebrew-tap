cask "veasel-desktop" do
  version "0.113.0-next.0"
  sha256 "c5af192db7d443ba1be1ab03b9488c7a067e2f29fe97d4c415b517c643798d0c"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.113.0-next.0/veasel-desktop-0.113.0-next.0-mac-arm64.dmg"
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
