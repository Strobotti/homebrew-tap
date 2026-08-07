cask "linkquisition" do
  version "3.1.4"
  sha256 "3c0b9029ee809b5d699b3b37fc8edc2fb5d59615aa581efafde3f635122c512a"

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
