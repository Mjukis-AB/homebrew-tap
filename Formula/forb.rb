class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.10.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.10.3/forb-v0.10.3-aarch64-apple-darwin.tar.gz"
      sha256 "1386baefa651749907b00b48f31315e11480286a9f3004543271674f5f899280"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.10.3/forb-v0.10.3-x86_64-apple-darwin.tar.gz"
      sha256 "acfa452cf8d47d4a518fb2a6ca5c613d5b4a88731d102f417f7a00f1f7357f5c"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.10.3/forb-v0.10.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "df6b2933efb0d115570076fcaa4bc82baddff40ac29eba993c5ac1109f7da70a"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
