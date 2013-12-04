require 'formula'

class Whereami < Formula
  homepage 'https://github.com/robmathers/WhereAmI'
  url 'https://github.com/robmathers/WhereAmI/archive/v1.02.tar.gz'
  sha1 '77d268416ae0749b8f5251397b78f1bebe65f890'

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
