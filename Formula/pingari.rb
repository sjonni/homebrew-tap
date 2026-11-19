class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.7.4/pingari-macos.zip"
  version "0.7.4"
  sha256 "0f698afd7d44c71ec4a751acef087e47221588c33b2008c60b5047477b57796c"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
