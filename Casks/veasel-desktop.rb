cask "veasel-desktop" do
  version "0.106.2-next.0"
  sha256 "0b17bdf149b2fd24033210fe476e3f59ca7dccdcd2fed9d8d17dc47d5fba53d2"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.106.2-next.0/veasel-desktop-0.106.2-next.0-mac-arm64.dmg"
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
