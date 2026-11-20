class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.9.3/pingari-macos.zip"
  version "0.9.3"
  sha256 "27162635ec81bd89fe8d4cd1aa7354afe3a4c76ad533848918a9725b569f830b"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
