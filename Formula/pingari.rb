class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.11.0/pingari-macos.zip"
  version "0.11.0"
  sha256 "78a575062c5c5249709bbf13ba8553b18d16913a13aa46d9ff33af133d62a706"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
