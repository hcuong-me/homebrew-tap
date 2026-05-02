class Zenv < Formula
  desc "Secure environment variable manager for zsh"
  homepage "https://github.com/hcuong-me/zenv"
  version "0.0.1"
  url "https://github.com/hcuong-me/zenv/releases/download/v0.0.1/zenv"
  sha256 "12caa4bd12f5a6c49e53fe7b7e8f174d7580dbdec2606367b438056a99d62c6c"
  license "MIT"

  depends_on :macos

  def install
    bin.install "zenv"
  end

  test do
    system "#{bin}/zenv", "version"
  end
end
