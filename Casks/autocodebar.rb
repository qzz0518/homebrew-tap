cask "autocodebar" do
  version "2.0.4"
  sha256 "127283c40e30e146c907146f9c204145737239867ed2c9fc6c53f770698dbab8"

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
