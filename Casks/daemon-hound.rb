cask "daemon-hound" do
  version "1.1.4"
  sha256 arm:   "DMG_SHA_FOR_ARM64",
         intel: "DMG_SHA_FOR_X86_64"

  url "https://github.com/0xdps/daemon-hound/releases/download/v#{version}/daemon-hound_#{version}_macOS_#{arch}.dmg"
  name "DaemonHound"
  desc "Opinionated local config and secret management for developers"
  homepage "https://github.com/0xdps/daemon-hound"

  app "DaemonHound.app"
  binary "#{appdir}/DaemonHound.app/Contents/MacOS/dhd", target: "dhd"

  zap trash: [
    "~/.config/daemon-hound",
    "~/.local/share/daemon-hound",
  ]
end