class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.6.4/pingari-macos.zip"
  version "0.6.4"
  sha256 "454f22b1f18d9fe3911d1d98445d12c78ef959dc976a29801f8d102536a76463"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
