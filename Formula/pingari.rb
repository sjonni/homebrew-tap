class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.6.2/pingari-macos.zip"
  version "0.6.2"
  sha256 "1403aa7cd8e58036f81a76e86241f6049142137bb49f8598d7a2b492214d5926"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
