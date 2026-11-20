class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.9.5/pingari-macos.zip"
  version "0.9.5"
  sha256 "8dcac8c3fbd4e26330fab8b810e17d9f195758f5d5b81be2e2249d1a7177c6c9"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
