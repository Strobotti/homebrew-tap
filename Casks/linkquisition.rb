cask "linkquisition" do
  version "2.5.4"
  sha256 "5c6b06271b7c77a032a040c9d79f0a3b89b84fc577388d9e57014024960b6831"

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
