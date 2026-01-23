class Dux < Formula
  desc "An interactive, DaisyDisk-like terminal disk usage analyzer"
  homepage "https://github.com/mjukis-ab/dux"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mjukis-ab/dux/releases/download/v0.3.5/dux-v0.3.5-x86_64-apple-darwin.tar.gz"
      sha256 "5ac4f6a6d20446e67cee1d6273ed3e6f3483835e08a5a42e3b82675bee7268ea"
    else
      url "https://github.com/mjukis-ab/dux/releases/download/v0.3.5/dux-v0.3.5-aarch64-apple-darwin.tar.gz"
      sha256 "703c69f891a304184a9f9cacf3f1be345a55d62713c0e96bd932ba5d1be6cc9b"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/dux/releases/download/v0.3.5/dux-v0.3.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "adeb28cb38782ccd3267c61be39aa5cbe6430707aa7ce998e23eac33f213e0f0"
  end

  def install
    bin.install "dux"
  end

  test do
    system "#{bin}/dux", "--version"
  end
end
