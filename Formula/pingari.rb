class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.7.0/pingari-macos.zip"
  version "0.7.0"
  sha256 "4dbd7fc088b7c1383d59eef6a0ca18b35c19beb5fb8cd346fcef56faec4d61df"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
