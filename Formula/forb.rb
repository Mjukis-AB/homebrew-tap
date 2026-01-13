class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  url "https://github.com/mjukis-ab/formatorbit/archive/refs/tags/v0.10.6.tar.gz"
  sha256 "2766b9cb3713ae4871d4d4d76784ec0226d6155a2f6f21db00f63eb80b2a0ba4"
  license "MIT"

  depends_on "rust" => :build
  depends_on "python@3.12"

  def install
    # Set Python path for pyo3
    python = Formula["python@3.12"]
    ENV["PYO3_PYTHON"] = python.opt_bin/"python3.12"

    system "cargo", "install",
           "--features", "plugins",
           "--path", "crates/cli",
           "--root", prefix,
           "--locked"
  end

  test do
    assert_match "hex", shell_output("#{bin}/forb --formats")
  end
end
