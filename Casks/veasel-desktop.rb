cask "veasel-desktop" do
  version "0.107.1-next.0"
  sha256 "43cd3cdc60727008646e7f45f2016ff0e95e973116600b914aa20a2685349fa3"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.107.1-next.0/veasel-desktop-0.107.1-next.0-mac-arm64.dmg"
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
