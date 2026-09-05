cask "autocodebar" do
  version "2.0.5"
  sha256 "83b7ec383796b5f02c695a14f3ce0238919f054adb5a34c808f843bf3f8f0071"

  url "https://github.com/qzz0518/AutoCodeBar/releases/download/v#{version}/AutoCodeBar-#{version}.dmg"
  name "AutoCodeBar"
  desc "Copies verification codes from Messages and Mail to the clipboard"
  homepage "https://github.com/qzz0518/AutoCodeBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "AutoCodeBar.app"

  zap trash: [
    "~/Library/Caches/cc.zerah.AutoCodeBar",
    "~/Library/HTTPStorages/cc.zerah.AutoCodeBar",
    "~/Library/Preferences/cc.zerah.AutoCodeBar.plist",
  ]
end
