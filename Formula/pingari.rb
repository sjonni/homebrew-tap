class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.9.4/pingari-macos.zip"
  version "0.9.4"
  sha256 "2d053fe9db36e0d16e0cbddae891bd26f806bd10535c3a683ea05055ef18f0f3"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
