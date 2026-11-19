class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.6.8/pingari-macos.zip"
  version "0.6.8"
  sha256 "30dfeddb3bed56dc5aaef733bd5bdf0d5184977fe4f4c2b2a7d3bb8031c92d64"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
