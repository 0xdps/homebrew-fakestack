cask "daemon-hound" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.5"
  sha256 arm:   "4366b4d74c26ade850fc0882137393d4b97d7e23e69793280a5342a116908fe7",
         intel: "a07a26b9db5f116f3d48a4bd35c8dc2d6b50a3d6b8dc24288abbf95ec0ca511f"

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
