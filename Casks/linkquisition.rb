cask "linkquisition" do
  version "2.9.1"
  sha256 "1d6bea36a57c642ad5faaf72cc16b365ae6c04918e053ae4b67eb431430716fa"

  url "https://github.com/Strobotti/linkquisition/releases/download/v#{version}/Linkquisition_macOS_universal.zip"
  name "Linkquisition"
  desc "Fast, configurable browser-picker for macOS and Linux"
  homepage "https://github.com/Strobotti/linkquisition"

  depends_on macos: :big_sur

  app "Linkquisition.app"

  binary "#{appdir}/Linkquisition.app/Contents/MacOS/linkquisition"

  zap trash: [
    "~/Library/Application Support/linkquisition",
    "~/Library/Logs/linkquisition",
  ]

  caveats <<~EOS
    This app is not notarized by Apple. After installation, run:
      xattr -cr /Applications/Linkquisition.app
  EOS
end
