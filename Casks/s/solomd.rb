cask "solomd" do
  version "4.1.0"
  sha256 "a52c70f4710b8354f975c49989dcb4f6ad9d1b76be6ea0cf18323c6b9ec9ead0"

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
