cask "clipth" do
  version "1.0.4"
  sha256 "955ae839fe8e5b775e4ae01b45bbdb81a0a9eb62963c7c5b5be6ed024a7ba72f"

  url "https://clipth.app/releases/Clipth-#{version}.dmg"
  name "Clipth"
  name "剪迹"
  desc "Native macOS clipboard manager"
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
