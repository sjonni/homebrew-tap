class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.9.1/pingari-macos.zip"
  version "0.9.1"
  sha256 "b4cfbf8dda0304f94aec079d44bfbf9df13bd2f33a2b08f0da1452d822258870"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
