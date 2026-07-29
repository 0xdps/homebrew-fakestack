cask "daemon-hound" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.5"
  sha256 arm:   "fd78252fec99c47f9ee821d0f3013478e183841683e9550f2ec958b7ecad342f",
         intel: "60571eabc34edf837a9a9913ee24fed6d56f1a4a103bd02973f2e252867537ca"

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
