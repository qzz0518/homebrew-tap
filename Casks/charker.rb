cask "charker" do
  version "0.3.0"
  sha256 "4dd1b2f49d9714f8d1eb8ea766facff6640da75c920a70b3f6e283b3d20e03e4"

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
