cask "paint-qt" do
  # A DragNDrop bundle rather than a dmg, which is what CPack produces here.
  version "1.0.1"
  sha256 "bbb733777530e089951e5d89fb35cd1f31a816c76dd8b35bd1ded2a09d058836"

  url "https://github.com/RubCut/Paint.QT/releases/download/v#{version}/paint-qt-#{version}-Darwin.tar.gz"
  name "Paint.QT"
  desc "Raster image editor with the tool set and palette layout of Paint.NET"
  homepage "https://github.com/RubCut/Paint.QT"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "paint-qt.app"

  # The bundle identifier is io.github.RubCut.Paint.QT, read out of the
  # Info.plist in the bundle, and Qt writes its settings under the organisation
  # name PaintQT with the application domain Paint.QT.
  zap trash: [
    "~/Library/Application Support/io.github.RubCut.Paint.QT",
    "~/Library/Application Support/PaintQT",
    "~/Library/Caches/io.github.RubCut.Paint.QT",
    "~/Library/Caches/PaintQT",
    "~/Library/Preferences/io.github.RubCut.Paint.QT.plist",
    "~/Library/Preferences/PaintQT.plist",
    "~/Library/Saved Application State/io.github.RubCut.Paint.QT.savedState",
  ]

  caveats <<~EOS
    Paint.NET is a registered trademark of its owner. Paint.QT is an independent
    program and contains no Paint.NET code.
  EOS
end