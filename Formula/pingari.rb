class Pingari < Formula
  desc "Watch a network and get alerted when a device stops responding"
  homepage "https://github.com/sjonni/homebrew-tap"
  url "https://github.com/sjonni/homebrew-tap/releases/download/v0.10.0/pingari-macos.zip"
  version "0.10.0"
  sha256 "46967ffc28b40e0396ba46ff4cb44c2f03612890079dcdc7f0676507a22dc53a"

  depends_on :macos

  def install
    bin.install "pingari"
  end

  test do
    assert_match "pingari v#{version}", shell_output("#{bin}/pingari --version")
  end
end
