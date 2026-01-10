class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.10.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.10.4/forb-v0.10.4-aarch64-apple-darwin.tar.gz"
      sha256 "fd6d9eadb2e60686c9db32bc5dd38420bee7a8ae423635e553a77eedec42fdcf"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.10.4/forb-v0.10.4-x86_64-apple-darwin.tar.gz"
      sha256 "25718769e273f591e0e9cdbba5d39cab1860be56bb724f65110f4aa5fa129143"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.10.4/forb-v0.10.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3633c19d41b4590a74f4042e55a972a2770ed7e0f90609ca2ad9febb5c8c4d94"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
