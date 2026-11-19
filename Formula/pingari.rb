class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.6.7/pingari-macos.zip"
  version "0.6.7"
  sha256 "5c46583c2056ae827e8bdfbfd695f2f88c5df1d79c2e76b1ede966f8f8ad6ac2"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
