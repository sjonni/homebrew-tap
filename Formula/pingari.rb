class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.9.0/pingari-macos.zip"
  version "0.9.0"
  sha256 "480cc020ed20406fa6c013952ce96d0b0d93ef84138a4cdaa2cf0b10b6b52af4"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
