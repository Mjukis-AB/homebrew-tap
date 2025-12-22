class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.1.1/forb-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "73c2cb205d9896e5491d01e261fbbce1131889ba76e92406aa0d2e2ce8df8a9a"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.1.1/forb-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "05dee545ad32cc276e7818ba7a1623c3ce4f084761d4c389ce1f8ed847100ae7"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.1.1/forb-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f82da2c622b990c1157b75ff696e31867e5dd56a46eb1b825db4cda7fc5fd94e"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
