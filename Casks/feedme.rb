cask "feedme" do
  version "1.1.1"
  sha256 "440c5f30b534dd9b9a54a9fc506873e89dbf4ea3a16dfde622163b4f155d01a0"

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
