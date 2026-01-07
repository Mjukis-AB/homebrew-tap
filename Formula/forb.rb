class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.8.0/forb-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "80e9b946aab21ed2f61d4d70e847e6cec1f67158ef06c30ef292eff39e659be6"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.8.0/forb-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "bf2f07846ab9a6d04fe8344f5bee76b2f5fcdeff03fa7ad798ba9cade05a1535"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.8.0/forb-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "73f46bdb3929120f21036ff6f6ab4585e0e0fe26b20d3537f59040e9ef7fc0da"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
