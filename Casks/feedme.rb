cask "feedme" do
  version "1.0"
  sha256 "ce842954926e3a623b9c888196422d525a538406501eef3685c6c90410b556f4"

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
