class SiyuanCli < Formula
  desc "CLI for SiYuan Note"
  homepage "https://github.com/hcuong-me/siyuan-cli"
  version "0.0.6"

  on_macos do
    on_arm do
      url "https://github.com/hcuong-me/siyuan-cli/releases/download/v0.0.6/siyuan-cli-darwin-arm64"
      sha256 "ed847e00013413ad65320be4437ad52bdbf5c0063c0d62e6249962aa15374518"
    end

    on_intel do
      url "https://github.com/hcuong-me/siyuan-cli/releases/download/v0.0.6/siyuan-cli-darwin-amd64"
      sha256 "2af72a93d6c8aedb487181ca8f0f32125d732d1658ae381c33688f1c7ccec682"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "siyuan-cli-darwin-arm64" => "siyuan-cli"
    else
      bin.install "siyuan-cli-darwin-amd64" => "siyuan-cli"
    end
  end

  test do
    system "#{bin}/siyuan-cli", "--version"
  end
end
