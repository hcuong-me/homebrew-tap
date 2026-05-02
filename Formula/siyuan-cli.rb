class SiyuanCli < Formula
  desc "CLI for SiYuan Note"
  homepage "https://github.com/hcuong-me/siyuan-cli"
  version "0.0.5"

  on_macos do
    on_arm do
      url "https://github.com/hcuong-me/siyuan-cli/releases/download/v0.0.5/siyuan-cli-darwin-arm64"
      sha256 "fb3fa1ae47cdd0d6dd586c552b9ee186086d066128c7ff778c7e5441d7f2557f"
    end

    on_intel do
      url "https://github.com/hcuong-me/siyuan-cli/releases/download/v0.0.5/siyuan-cli-darwin-amd64"
      sha256 "3652142899f1b9f0d258f9d02cafe4f899d949d3c194a6f84d3e91ead395d29a"
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
