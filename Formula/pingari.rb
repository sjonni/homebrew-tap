class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.7.2/pingari-macos.zip"
  version "0.7.2"
  sha256 "e4ec2bde1ba6ba6723dd464cb8bc13be4010d6c1a45716b09c91ec01fc44cd32"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
