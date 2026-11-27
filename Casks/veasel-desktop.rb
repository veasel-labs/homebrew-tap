cask "veasel-desktop" do
  version "0.111.0-next.0"
  sha256 "daa586a0a5a36276c4e6b795ae7e1d444ff8cc5da45cda618605c6bcb0cd224d"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.111.0-next.0/veasel-desktop-0.111.0-next.0-mac-arm64.dmg"
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
