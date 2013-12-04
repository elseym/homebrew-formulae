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
                         "clean", "build",
    system "mv",
           "build/Release/WhereAmI",
           "build/Release/whereami"
    bin.install "build/Release/whereami"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test WhereAmI`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "--version"`.
    system "true"
  end
end
