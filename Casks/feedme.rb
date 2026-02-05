cask "feedme" do
  version "1.2.0"
  sha256 "35c8305adb1d54e7a4d72871a937d5395944286f592b90360863d0cb3641d250"

  url "https://github.com/XuanLee-HEALER/FeedMe/releases/download/v#{version}/FeedMe-#{version}.dmg"
  name "FeedMe"
  desc "Lightweight macOS menu bar RSS reader"
  homepage "https://github.com/XuanLee-HEALER/FeedMe"

  depends_on macos: ">= :ventura"

  app "FeedMe.app"

  zap trash: [
    "~/Library/Application Support/FeedMe",
    "~/Library/Preferences/com.lixuan.FeedMe.plist",
    "~/Library/Caches/com.lixuan.FeedMe",
  ]
end
