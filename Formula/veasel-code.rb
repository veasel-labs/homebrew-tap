class VeaselCode < Formula
  desc "V-native AI coding agent with a local terminal interface"
  homepage "https://veasel.dev"
  url "https://github.com/veasel-labs/veasel/releases/download/v0.15.0-next.0/veasel-macOS.tar.gz"
  version "0.15.0-next.0"
  sha256 "0fd1bf643a5036c518dd0deb49fa6a14329ed4c766225eac71ca7f81c2bff9e0"
  license "MIT"

  depends_on arch: :arm64
  depends_on "bun"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"veasel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veasel --version")
    assert_includes shell_output("#{bin}/veasel --help"), "Start or reuse the local V backend"
    assert_predicate libexec/"tui/package.json", :file?
  end
end
