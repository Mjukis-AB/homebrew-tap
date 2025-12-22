class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.2.0/forb-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "3148d46f1d2f5f84c69b3afbca6b59841f1dcc94c8eb8f1c5143e3ee8e5413a5"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.2.0/forb-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f873798453b7c5f99e59f03196c1168705b0919f0f8b827628469c51b73eb790"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.2.0/forb-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1453fa1b09bd5cfd84ee5b19546f5e95c79eb060646f21ea9a7014d737476f1a"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
