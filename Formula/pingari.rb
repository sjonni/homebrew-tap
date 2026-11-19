class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.6.9/pingari-macos.zip"
  version "0.6.9"
  sha256 "78483a9aa23bab1b1b3222167586fa6c3e9ee7e1bfb5efd50fc2d3ee22060a97"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
