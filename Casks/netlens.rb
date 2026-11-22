cask "netlens" do
  version "0.11.0"
  sha256 "7a9272659753e47c006ff76fb27a5c73c61ab4c7b68097b6654b0058192173e1"

  url "https://github.com/sjonni/homebrew-tap/releases/download/v#{version}/Netlens-#{version}.dmg"
  name "Netlens"
  desc "Survey and watch a local network: devices, switches, map and visits"
  homepage "https://github.com/sjonni/homebrew-tap"

  livecheck do
    url "https://raw.githubusercontent.com/sjonni/homebrew-tap/main/appcast/netlens.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Netlens.app"

  # The site library (saved sites and their visits) is in Application Support.
  # SNMP settings and phone alerts are pingari's Keychain items; zap leaves them.
  zap trash: [
    "~/Library/Application Support/is.4d.netlens",
    "~/Library/Caches/is.4d.netlens",
    "~/Library/HTTPStorages/is.4d.netlens",
    "~/Library/HTTPStorages/is.4d.netlens.binarycookies",
    "~/Library/Preferences/is.4d.netlens.plist",
    "~/Library/Saved Application State/is.4d.netlens.savedState",
    "~/Library/WebKit/is.4d.netlens",
  ]
end
