cask "charker" do
  version "0.1.0"
  sha256 "661b7e0bb734971ab11e3a797ba1598383f4d266382fbcd4ec7fe88fdde0964a"

  url "https://github.com/qzz0518/Charker/releases/download/v#{version}/Charker-#{version}.dmg"
  name "Charker"
  desc "Companion for monitoring and controlling an Anker Prime 160W charger"
  homepage "https://github.com/qzz0518/Charker"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Charker.app"

  zap trash: "~/Library/Containers/dev.charker.Charker"
end
