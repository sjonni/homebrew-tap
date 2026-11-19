class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.6.6/pingari-macos.zip"
  version "0.6.6"
  sha256 "a725ffb2c87c5dc27c449cdcd8775e5f070c827b9ac101d5237b79575a259d6b"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
