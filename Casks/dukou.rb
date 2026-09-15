cask "dukou" do
  version "0.1.12"
  sha256 "2bae0ceedb27b690d49fa15a3159b7855c38b2d78061f9b436911346cc4bd60c"

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
