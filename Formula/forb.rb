class Forb < Formula
  desc "CLI tool that shows all possible interpretations of any data input"
  homepage "https://github.com/mjukis-ab/formatorbit"
  url "https://github.com/mjukis-ab/formatorbit/archive/refs/tags/v0.10.5.tar.gz"
  sha256 "463043986a507104d86c66aeaa764180a1cd86ae8b50c095fa8c94c4b706db4a"
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
