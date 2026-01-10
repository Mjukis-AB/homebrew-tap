class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.10.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.10.2/forb-v0.10.2-aarch64-apple-darwin.tar.gz"
      sha256 "ff32b7ed9bee73e50b18726ab0739612f03e8aeaebd13c83c15a6de8b74b1700"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.10.2/forb-v0.10.2-x86_64-apple-darwin.tar.gz"
      sha256 "c7bb707d533c39e54dc63606d1bd47f97dd4238acb0c132759a4454b8fa9729d"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.10.2/forb-v0.10.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a8f54028687f65476d3109609c80cf1c2804ce567b841ccb3468e27c6df7b626"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
