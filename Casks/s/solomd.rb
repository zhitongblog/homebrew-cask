cask "solomd" do
  version "5.0.2"
  sha256 "53cb7f2bd0b26374cb86e933e6c971ea401db15727e85fe1a02b08c6c4e5baa5"

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
