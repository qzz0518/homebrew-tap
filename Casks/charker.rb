cask "charker" do
  version "0.5.6"
  sha256 "e3496e2ee1a2c651b2782f501ae6961adbfd950827a0a083ccc00eac4399f3b9"

  url "https://github.com/qzz0518/Charker/releases/download/v#{version}/Charker-#{version}.dmg"
  name "Charker"
  desc "Companion for monitoring Anker Prime 160W and 250W chargers"
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
