class Zenv < Formula
  desc "Secure environment variable manager for zsh"
  homepage "https://github.com/hcuong-me/zenv"
  url "https://github.com/hcuong-me/zenv/releases/download/v${VERSION}/zenv"
  sha256 "${SHA256}"
  license "MIT"

  depends_on :macos

  def install
    bin.install "zenv"
  end

  test do
    system "#{bin}/zenv", "version"
  end
end
