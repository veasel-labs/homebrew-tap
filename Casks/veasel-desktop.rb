cask "veasel-desktop" do
  version "0.108.1-next.0"
  sha256 "9d07febc6ef85ec1b26f2d1673a5bc8c6af79957ed0bf16f08452d606ae8d6c3"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.108.1-next.0/veasel-desktop-0.108.1-next.0-mac-arm64.dmg"
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
