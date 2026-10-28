cask "charker" do
  version "0.5.7"
  sha256 "3609553eb2f666c78b9c08c55c2f78d606686049b187415f265b33f0ff6eb956"

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
