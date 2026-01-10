class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.10.1/forb-v0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "808961f2a9c03dccab23f10ca2a8e6f4a7dbed2715ab9f07dc653d0e96b39a2c"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.10.1/forb-v0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "080f2c760a0b11830123dbc07ca36a49ca7d3708fce10f56d7c1af65bbb644e9"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.10.1/forb-v0.10.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b6f7fb9df62a18395f60befd043eb86565e2dfd8effe0bb8c108ea7a22d5d42e"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
