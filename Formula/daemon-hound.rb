cask "daemon-hound" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.5"
  sha256 arm:   "49dedb0720a9f5268bbed64b6e064f11b04ae71a31d0fec25a7c91a9fa8ec73d",
         intel: "7b02cc60c843360d557c2a352d7c71f5d5502fe3b78c2a1d56f692c9f4a089e1"

  url "https://github.com/0xdps/daemon-hound/releases/download/v1.1.5/daemon-hound_#{version}_macOS_#{arch}.dmg"
  name "DaemonHound"
  desc "Opinionated local config and secret management for developers"
  homepage "https://github.com/0xdps/daemon-hound"

  app "DaemonHound.app"
  binary "#{appdir}/DaemonHound.app/Contents/MacOS/dhd", target: "dhd"

  zap trash: [
    "~/Library/Application Support/DaemonHound",
    "~/Library/Logs/DaemonHound",
  ]
end
