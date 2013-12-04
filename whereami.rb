require 'formula'

class Whereami < Formula
  homepage 'https://github.com/robmathers/WhereAmI'
  url 'https://github.com/robmathers/WhereAmI/releases/download/v1.02/whereami-1.02.zip'
  sha1 '77d268416ae0749b8f5251397b78f1bebe65f890'

  head 'https://github.com/robmathers/WhereAmI.git'

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
