class Zenv < Formula
  desc "Secure environment variable manager for zsh"
  homepage "https://github.com/hcuong-me/zenv"
  url "https://github.com/hcuong-me/zenv/releases/download/v1.0.2/zenv"
  version "1.0.2"
  sha256 "6d00f3b1db689721be4222b77225ca0561b9c02d6658e51f28313f01ea1a798a"
  license "MIT"

  depends_on :macos

  def install
    bin.install "zenv"
  end

  test do
    system "#{bin}/zenv", "version"
  end
end
