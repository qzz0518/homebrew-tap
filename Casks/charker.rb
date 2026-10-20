cask "charker" do
  version "0.5.2"
  sha256 "ed9d406656d6feced062119c6d22c542c6b225e10a781e8dd1a34f986dc84f51"

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
