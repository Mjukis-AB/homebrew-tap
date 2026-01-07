class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.9.0/forb-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "31706862934a67a04df673bd4057fa90e0ca19b8c1f715ec37304c988ceb8d08"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.9.0/forb-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "16bb35a489f075772c63d800c9206f7ef505e08b99735c1b7ec2821b891909f5"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.9.0/forb-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ed3a07e7cd4c46778e1f53185084bad2e6c1fa5a944ec071036a106fe71029c3"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
