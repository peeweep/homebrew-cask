cask "arduino-ide" do
  version "2.0.3"
  sha256 "145acd62daa15fe1d7548c569bd00cfc193a82f2e7fc6a4bd5e9028c0f8a74f9"

  url "https://downloads.arduino.cc/arduino-ide/arduino-ide_#{version}_macOS_64bit.dmg"
  name "Arduino IDE"
  desc "Electronics prototyping platform"
  homepage "https://www.arduino.cc/en/software"

  livecheck do
    url "https://www.arduino.cc/en/software/"
    regex(/href=.*?arduino[._-]ide[._-]?(\d+(?:\.\d+)+)[._-]macos[._-]64bit\.dmg/i)
  end

  conflicts_with cask: "arduino-ide-nightly"

  app "Arduino IDE.app"

  zap trash: [
    "~/.arduinoIDE",
    "~/Library/Application Support/arduino-ide",
  ]
end
