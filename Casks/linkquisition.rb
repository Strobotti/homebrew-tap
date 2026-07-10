cask "linkquisition" do
  version "2.10.0"
  sha256 "0c662ba3d47df1c089029479b40322f12e2fdd64f825319d6b5b39f8581645be"

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
