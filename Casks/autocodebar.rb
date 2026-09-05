cask "autocodebar" do
  version "2.0.6"
  sha256 "99459adc773e6a56e18bc0849e995fda3f5f391b166ea61e56f42146598deca7"

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
