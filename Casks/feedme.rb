cask "feedme" do
  version "1.1.1"
  sha256 "b59dd73008de35c4c373fffa548399d491928561dd78dd466c999179c57c28d7"

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
