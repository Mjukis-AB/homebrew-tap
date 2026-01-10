class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.10.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.10.2/forb-v0.10.2-aarch64-apple-darwin.tar.gz"
      sha256 "9acef8e8f21c6eb0c80875220b04f1cb1c970794035c88b38eaf4e95fc766729"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.10.2/forb-v0.10.2-x86_64-apple-darwin.tar.gz"
      sha256 "b5d877fbe8f96ef64827175f4eac14ff434cc5e9e8ec238abf230d2a05ddc0de"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.10.2/forb-v0.10.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "de7e9fd5483ab7800ea6e5268384503b1dc8db191db2f03d2b0bd92b75d09e97"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
