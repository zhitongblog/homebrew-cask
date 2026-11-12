cask "solomd" do
  version "5.0.20"
  sha256 "4608b072ad9e97b64534c6795fd22f5bf2d846af92c6ca2ddb925c6abd483e25"

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
