class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.5.2/forb-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "cc51e4da2dd1332145faccc3820d825a6b891f3bdddcf02b6fceaea071a0c589"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.5.2/forb-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "de17a8952330f32f139c3cf7c24f7fc9d24f5502947f719ad10f08445cef8c6b"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.5.2/forb-v0.5.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "18c18f5b75dbd11deaf47559173c206f7bb123429bc67e07437c9fa54b8a24cd"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
