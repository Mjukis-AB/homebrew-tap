class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.2.1/forb-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "d31f7f5f7824a6020a06676188f4161c17c56497d83e3adcbabf55c301de4203"
    else
      url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.2.1/forb-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "1ad30b8caa7e65fbbe21f96f40693ea7850f4a6d69490991a6803572feecba5d"
    end
  end

  on_linux do
    url "https://github.com/mjukis-ab/formatorbit/releases/download/v0.2.1/forb-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6c468e9d324c386f20cdc9b5ce7f41b204bd18f795f90b4ddea2f79b3ea24b38"
  end

  def install
    bin.install "forb"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
