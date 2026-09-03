cask "autocodebar" do
  version "2.0.1"
  sha256 "ed2cf66c8496248ade6f036cfe20d4048ba007d57d3c4d57c3837223d9c74229"

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
    "~/Library/Caches/dev.qiuzezheng.AutoCodeBar",
    "~/Library/HTTPStorages/dev.qiuzezheng.AutoCodeBar",
    "~/Library/Preferences/dev.qiuzezheng.AutoCodeBar.plist",
  ]
end
