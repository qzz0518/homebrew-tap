cask "dukou" do
  version "0.1.2"
  sha256 "01adb88da2a0ee6075b49b1de12bf754a79b9b2f71f045fdd1e67da2d2883b3c"

  url "https://github.com/qzz0518/Dukou/releases/download/v#{version}/Dukou-#{version}.dmg"
  name "Dukou"
  desc "Forward WeChat chat history to Codex, Claude or any app from the Share menu"
  homepage "https://github.com/qzz0518/Dukou"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Dukou.app"

  zap trash: [
    "~/Library/Containers/dev.dukou.Dukou*",
    "~/Library/Group Containers/H2P566W3PA.dev.dukou.shared",
    "~/Library/Preferences/dev.dukou.Dukou.plist",
  ]
end
