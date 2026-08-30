# Homebrew Tap for Charker

Install [Charker](https://github.com/qzz0518/Charker), a native macOS companion for the Anker Prime 160W charger:

```bash
brew tap qzz0518/tap
brew install --cask charker
```

The temporary `v0.1.0` Cask installs the same Developer ID-signed preview DMG published on GitHub
Releases while its first Apple notarization is still in progress. If macOS blocks the first launch,
Control-click Charker in Applications and choose **Open**, or use
**System Settings → Privacy & Security → Open Anyway**. The Cask will move to the final notarized
artifact when Apple finishes processing it.
