class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.10.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.10.2/forb-v0.10.2-aarch64-apple-darwin.tar.gz"
      sha256 "85bd3414b874493ebf3fc3f907f1298566385c521b31398cdabf2de786448e2e"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.10.2/forb-v0.10.2-x86_64-apple-darwin.tar.gz"
      sha256 "2094cc35e567e7259088b76cd6234bfe4e6236862c2b0c0ed8d1aafdc7ec0e56"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.10.2/forb-v0.10.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9fba5afe28f7f57f20f6396847174f7e6ba6447ed235b11b0984fb0f77b1ad1e"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
