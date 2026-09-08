cask "dukou" do
  version "0.1.10"
  sha256 "e6f2aed2cd50326199b2068c5be58db90ee0fbbf1e7c51f586e08fe750ac7de8"

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
