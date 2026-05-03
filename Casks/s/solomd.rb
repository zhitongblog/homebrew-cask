cask "solomd" do
  version "4.0.0"
  sha256 "8cc8b8209a964fd9f199aef9839d7e361b396d3de03b769cdc47ed7551a27317"

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
