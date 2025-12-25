class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.4.0/forb-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "77e2a912bd8c257ca7113fb3dae30d4108f7678f8f958cdff04e4255365d9a3f"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.4.0/forb-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "8e49599d124f4da87a7eec5b4bee2bb770215b0bc3cf0c92e81809918b8977ff"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.4.0/forb-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4292eebc4bf9bbef5ac8036bb3d4a080992cc0ac2c29664d7bba6987c5235cc1"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
