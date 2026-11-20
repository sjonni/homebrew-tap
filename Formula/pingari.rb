class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.9.6/pingari-macos.zip"
  version "0.9.6"
  sha256 "c1488b942a13e2c0272d526d707c2fcef8f76fac92b40c632e78e035b8d09789"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
