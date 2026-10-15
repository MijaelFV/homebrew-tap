# Homebrew cask for YT Musicfast (https://github.com/MijaelFV/YTMusicfast).
#
#   brew tap mijaelfv/tap
#   brew trust --cask mijaelfv/tap/ytmusicfast   # Homebrew 7 and later
#   brew install --cask ytmusicfast
#
# The app's scripts/release.sh updates `version` and `sha256` for each release.
cask "ytmusicfast" do
  version "0.1.1"
  sha256 "000849ce83cd3819111301b5d19844a748573bad66ab2564ecf537b0af48452e"

  url "https://github.com/MijaelFV/YTMusicfast/releases/download/v#{version}/YTMusicfast-#{version}.dmg"
  name "YT Musicfast"
  desc "Fast, native YouTube Music client"
  homepage "https://github.com/MijaelFV/YTMusicfast"

  # The app updates itself (Sparkle).
  auto_updates true
  depends_on macos: :sequoia

  app "YT Musicfast.app"
  binary "#{appdir}/YT Musicfast.app/Contents/Helpers/ytmusicfast"

  zap trash: [
    "~/Library/Application Support/YTMusicfast",
    "~/Library/Caches/YTMusicfast",
    "~/Library/Caches/dev.ytmusicfast.app",
    "~/Library/HTTPStorages/dev.ytmusicfast.app",
    "~/Library/Preferences/dev.ytmusicfast.app.plist",
    "~/Library/WebKit/dev.ytmusicfast.app",
  ]
end
