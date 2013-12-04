require 'formula'

class Whereami < Formula
  homepage 'https://github.com/robmathers/WhereAmI'
  url 'https://github.com/robmathers/WhereAmI/archive/v1.02.tar.gz'
  sha1 '14dd46e8b3c2cef0725c2f95e77fbdc379a0ba42'

  def install
    system "xcodebuild", "-project", "WhereAmI.xcodeproj",
                         "-target", "WhereAmI",
                         "-configuration", "Release",
                         "clean", "build"
    system "mv", "build/Release/WhereAmI",
                 "build/Release/whereami"
    bin.install "build/Release/whereami"
  end

  test do
    system "true"
  end
end
