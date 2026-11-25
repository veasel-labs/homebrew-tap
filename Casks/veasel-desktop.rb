cask "veasel-desktop" do
  version "0.103.3-next.0"
  sha256 "7ff576225ea3d6056f36a566f61ac523cc4ab0b69d705edc6755de1192646257"

  url "https://github.com/veasel-labs/veasel/releases/download/v#{version}/veasel-desktop-#{version}-mac-arm64.dmg"
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
