class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.8.1/pingari-macos.zip"
  version "0.8.1"
  sha256 "515c1027f517a8de003a91ab4ff690e925c576497812ea400d4851f33dce2803"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
