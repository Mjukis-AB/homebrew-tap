class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.9.2/forb-v0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "e0ce1a07747eacb8cac167d471f192555ce3509f999ca92075f7c5e54469bcd2"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.9.2/forb-v0.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "d3cbabd9c0112b4a293101e531f18c006cecb6a2701f7db26bf45be20f2bc473"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.9.2/forb-v0.9.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "10467f4d9ae2bcfad0dd5ce0bf3add4b723da8673908ff84ef918013e4c7eb73"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
