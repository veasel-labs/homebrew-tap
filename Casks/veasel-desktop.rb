cask "veasel-desktop" do
  version "0.110.0-next.0"
  sha256 "2987e4ff1c33e59d0cdd6c83fb294af65d0351fd0973c359438d54ef8db0b885"

  url "https://github.com/veasel-labs/veasel/releases/download/v0.110.0-next.0/veasel-desktop-0.110.0-next.0-mac-arm64.dmg"
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
