cask "clipth" do
  version "1.0.6"
  sha256 "5943d0184fd2cd1fead174315ba05bd793ce73d4aa6f82444118297aaf0167f0"

  url "https://clipth.app/releases/Clipth-#{version}.dmg"
  name "Clipth"
  name "剪迹"
  desc "Clipboard manager"
  homepage "https://clipth.app/"

  livecheck do
    url "https://clipth.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Clipth.app"

  zap trash: [
    "~/Library/Application Support/Clipth",
    "~/Library/Caches/com.wavever.clipth",
    "~/Library/HTTPStorages/com.wavever.clipth",
    "~/Library/Preferences/com.wavever.clipth.plist",
    "~/Library/Saved Application State/com.wavever.clipth.savedState",
  ]
end
