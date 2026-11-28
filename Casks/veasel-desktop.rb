cask "veasel-desktop" do
  version "0.118.0-next.0"
  sha256 "4efc25e66d77c03ffd728abbfe432b0f070245d18e9006f95c5349ddf21cf2b8"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.118.0-next.0/veasel-desktop-0.118.0-next.0-mac-arm64.dmg"
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
