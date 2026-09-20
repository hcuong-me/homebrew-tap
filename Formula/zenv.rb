class Zenv < Formula
  desc "Secure environment variable manager for zsh"
  homepage "https://github.com/hcuong-me/zenv"
  url "https://github.com/hcuong-me/zenv/releases/download/v1.0.1/zenv"
  version "1.0.1"
  sha256 "1498495152716fc42d0ee59977d305d198331e9a812a1527d101932f0f9e4b18"
  license "MIT"

  depends_on :macos

  def install
    bin.install "zenv"
  end

  test do
    system "#{bin}/zenv", "version"
  end
end
