cask "feedme" do
  version "1.3.0"
  sha256 "845a943b2eef244b5f16d59be20608e603e8fa370ed4e70a450c1af0e4e3c501"

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
