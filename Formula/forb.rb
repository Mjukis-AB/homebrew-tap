class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.3.2/forb-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "190c3e9801f338ba52ab66f4ea09aa8345ba6c7fb51728584b7e7677c0d47842"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.3.2/forb-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "c78b7c4cfe5bb997fab0f0d3e8667d0426041871c2b723dd5d2e61d128b6117a"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.3.2/forb-v0.3.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "993c44b8ec3801cad1af84f2b10aaf79eb494f9f1a59749bd40fe9d8b07a0328"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
