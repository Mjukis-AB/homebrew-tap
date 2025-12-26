class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.5.0/forb-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "2a6372c987346274f727256aee955622e84e2bbaaaced3493b4972fff67fda4e"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.5.0/forb-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "e6bd194c2d9eeac888182e8ab0b29de154d1fa70943f670254a4e9ef815fa05c"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.5.0/forb-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0ec0cbfe174fb35872bbd7439068529ebbfcfac3b9eaaad9f69e318d80d91ad1"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
