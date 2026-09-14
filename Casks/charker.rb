cask "charker" do
  version "0.2.0"
  sha256 "e6ca695b4ae6613d16fb4f14684e66fe0fafbdc62255e32bc499221f70a9606e"

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
