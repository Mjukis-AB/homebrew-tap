class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.3.1/forb-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "5596abf59087f8a983dd05e10b530586f73619125efdf70f5e607ad9e1ea59f6"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.3.1/forb-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "e769e6e6e61cea6da52569aed606afc462eaa9709d96f3e33299acae3b29a95f"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.3.1/forb-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ba6fc8531534a259c87939aa524172168d4a49b6028eee515a901f0d323510ba"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
