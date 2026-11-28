cask "veasel-desktop" do
  version "0.115.2-next.0"
  sha256 "ce0efa01dde86606fe9abec56be98bf7c1bdda28a4756a8e13ca12f9d3837256"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.115.2-next.0/veasel-desktop-0.115.2-next.0-mac-arm64.dmg"
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
