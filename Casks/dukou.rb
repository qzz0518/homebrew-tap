cask "dukou" do
  version "0.1.20"
  sha256 "b430ea4df73dfa4983b0b7f4a5668aba0b6788c07038288dfff8badd086df1f0"

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
    "~/Library/Application Support/Dukou",
    "~/Library/Containers/dev.dukou.Dukou*",
    "~/Library/Group Containers/H2P566W3PA.dev.dukou.shared",
    "~/Library/Preferences/dev.dukou.Dukou.plist",
  ]
end
