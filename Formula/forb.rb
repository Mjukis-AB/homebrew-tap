class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.3.0/forb-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "9690ca3d0c2139aa701cd4fe32504c34cd51ea6c394e5865709f9c7df91fc360"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.3.0/forb-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "2732470c0770db512e9ec03f302aa32ed8d54b191408a14f2b7a4d1aaf9e17c7"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.3.0/forb-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5f9122b597de8a22fcea5ec34ea2ac474372da6c30143f31c9ddfb428fb6525c"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
