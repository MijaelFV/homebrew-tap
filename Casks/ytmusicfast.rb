# Homebrew cask for YT Musicfast (https://github.com/MijaelFV/YTMusicfast).
#
#   brew tap mijaelfv/tap
#   brew trust --cask mijaelfv/tap/ytmusicfast   # Homebrew 7 and later
#   brew install --cask ytmusicfast
#
# The app's scripts/release.sh updates `version` and `sha256` for each release.
cask "ytmusicfast" do
  version "0.1.3"
  sha256 "0fcaaf44e5f30b0d350d709329e76d57516f2e32b5738841ef864f6460bd0962"

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
