cask "autocodebar" do
  version "2.0.3"
  sha256 "c154934bd6ff03ab60dead17f3cc83e4abb0513271104c0cdd1e46c1e8cef2d0"

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
