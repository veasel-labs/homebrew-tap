cask "veasel-desktop" do
  version "0.114.0-next.0"
  sha256 "43f97b54ea67f96a1fc8201b4152ad9d543eda885db1e29cd9b42f8c1f047f50"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.114.0-next.0/veasel-desktop-0.114.0-next.0-mac-arm64.dmg"
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
