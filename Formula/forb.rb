class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.6.0/forb-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "56451dc2539298c02d0f41007978b0bea1a0104f58f5b0f7c10bf0e415ea874b"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.6.0/forb-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "7e8727ae87d71bf2180afb49b91b0707340b5fab51af73e99c6453a3d3bff83f"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.6.0/forb-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1b03fd11a646516e79e2432c3cf831a7b14f9dd1d201250bf0575b82e69aa14e"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
