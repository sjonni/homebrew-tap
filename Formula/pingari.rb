class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.9.2/pingari-macos.zip"
  version "0.9.2"
  sha256 "db0b4aac2c7cd7ab96c42ebc140fe66ffa59f16671a634b4e8667b746b35d325"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
