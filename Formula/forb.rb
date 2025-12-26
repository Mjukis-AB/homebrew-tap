class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.5.1/forb-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "31c1b1e6d6977aa58731bc62e2c3d4c3d0ea627aec6b3d4523a594b9ada4cd2a"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.5.1/forb-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "130abc0d0d65379401f1558a42038bf502426d712c10b0364735f0fa96099826"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.5.1/forb-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "43ae2ca83b7129ed8d787a60e46e0e2dfc45d67ec19a9a25f8d145fb0c836f37"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
