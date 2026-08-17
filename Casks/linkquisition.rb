cask "linkquisition" do
  version "3.1.7"
  sha256 "159503b8a9c80419cd1e443245c8d28449a5363395ff9677104ea951a95d9a86"

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
