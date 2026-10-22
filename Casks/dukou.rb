cask "dukou" do
  version "0.1.17"
  sha256 "933f16d79a421fc5af44fc5e4f3095384ad3c2a80001d1572e9778392b79ffd0"

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
