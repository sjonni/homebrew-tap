class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.7.3/pingari-macos.zip"
  version "0.7.3"
  sha256 "f9b7216401c9aaba33a47ebc584adaf9d37aa2f716bc71ec4bef307ac3f6e1e3"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
