cask "pomodorino" do
  version "1.0.0"
  sha256 "9b0cd886ef48d8e45e913a051cb41ff3ba4bd6b0033d28bac15f174feab03c2c"

  url "https://github.com/duanecilliers/Pomodorino/releases/download/v#{version}/Pomodorino-#{version}.dmg"
  name "Pomodorino"
  desc "A little tomato for your menu bar — Pomodoro timer for macOS"
  homepage "https://github.com/duanecilliers/Pomodorino"

  depends_on macos: ">= :ventura"

  app "Pomodorino.app"

  zap trash: [
    "~/Library/Application Support/Pomodoro",
    "~/Library/Preferences/com.pomodoro.app.plist",
  ]

  livecheck do
    url :url
    strategy :github_latest
  end
end