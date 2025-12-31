class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.7.0/forb-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "b2d94c328a09448e3ec9e19b13e67af88468bc43210fea662f9ee4d62afaec19"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.7.0/forb-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "1886d7548865715b5a413efc03a30dd618c006ed9cbe8088d2ad73599d8de95c"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.7.0/forb-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9c716e79b7eededd2c8681f120203498cfb4493e712b0387d5e8c39ac72a4f1f"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
