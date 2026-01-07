class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.9.1/forb-v0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "2940b727adeeeec0c923573ea5d1a8e9768f40179b70cd33354757af4a85e18a"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.9.1/forb-v0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "d30b352d413652e3fbdaf39cb25dddc474cc5b623eb5a9183476fdcb05d0637e"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.9.1/forb-v0.9.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c6929fd9c2a8e124f708a9bc70288e81272ef329c8d55cd5e7324028df29ecba"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
