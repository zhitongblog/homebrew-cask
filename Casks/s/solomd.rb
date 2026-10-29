cask "solomd" do
  version "5.0.9"
  sha256 "1791bd52fee506b2bddfba7af1ea1d2d3fab89e925ef49a6f1788850057d7d0a"

  url "https://github.com/zhitongblog/solomd/releases/download/v#{version}/SoloMD_#{version}_universal.dmg",
      verified: "github.com/zhitongblog/solomd/"
  name "SoloMD"
  desc "Lightweight Markdown and plain text editor"
  homepage "https://solomd.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "SoloMD.app"

  zap trash: [
    "~/Library/Application Support/app.solomd",
    "~/Library/Caches/app.solomd",
    "~/Library/Preferences/app.solomd.plist",
    "~/Library/Saved Application State/app.solomd.savedState",
    "~/Library/WebKit/app.solomd",
  ]
end
