class Zenv < Formula
  desc "Secure environment variable manager for zsh"
  homepage "https://github.com/hcuong-me/zenv"
  url "https://github.com/hcuong-me/zenv/releases/download/v1.0.0/zenv"
  version "1.0.0"
  sha256 "fbec938f826590204893d8c3dfbe7b14853714c9fd0e64794026b323cffc6c6d"
  license "MIT"

  depends_on :macos

  def install
    bin.install "zenv"
  end

  test do
    system "#{bin}/zenv", "version"
  end
end
