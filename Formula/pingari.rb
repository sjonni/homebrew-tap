class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.12.0/pingari-macos.zip"
  version "0.12.0"
  sha256 "0ae6f92c7bd2d12539ac2cc1f62e0030f5cff43fac8e0fa3b17063cc9a87f83f"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
