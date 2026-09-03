cask "autocodebar" do
  version "2.0.0"
  sha256 "5d7abe0b5ab491fd231105e5dc1a4812db69d50df870367a0393dc224b80fc3d"

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
    "~/Library/Preferences/dev.qiuzezheng.AutoCodeBar.plist",
    "~/Library/Caches/dev.qiuzezheng.AutoCodeBar",
    "~/Library/HTTPStorages/dev.qiuzezheng.AutoCodeBar",
  ]
end
