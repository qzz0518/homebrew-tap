cask "autocodebar" do
  version "2.0.2"
  sha256 "8d4f64ba15cd93d3bbcaafcd98ef78113aa7355676ab356957ed9e6c87ca8f32"

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
