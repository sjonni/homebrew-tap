class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.9.7/pingari-macos.zip"
  version "0.9.7"
  sha256 "c2e7ece3f6e4c7eb05d92abdf8f6000e53a90453772e4dd93e955405b1af1f8c"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
