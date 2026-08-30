cask "charker" do
  version "0.1.0"
  sha256 "c05ed091fbbb16aa615f4377480a6dd14fa4e81cb3196df8258c928b31eb84be"

  url "https://github.com/qzz0518/Charker/releases/download/v#{version}/Charker-#{version}-unnotarized.dmg"
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

  caveats <<~EOS
    This temporary v0.1.0 preview is Developer ID-signed, but Apple
    notarization is still in progress. If macOS blocks the first launch,
    Control-click Charker in Applications and choose Open, or use
    System Settings > Privacy & Security > Open Anyway.
  EOS
end
