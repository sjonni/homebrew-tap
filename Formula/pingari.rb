class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.8.0/pingari-macos.zip"
  version "0.8.0"
  sha256 "740e60d71cbad7c937db5b4b56eb08f19d3f2a851c45744c47256e92d3c81497"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
