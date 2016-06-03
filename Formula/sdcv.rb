class Sdcv < Formula
  desc "StarDict Console Version"
  homepage "https://github.com/Dushistov/sdcv"
  url "https://github.com/Dushistov/sdcv.git",
      :revision => "4921f2837a17aeb6ff6e9a613e40a962ef99aac7"
  version "0.5-2016-06-03"

  depends_on "pkg-config" => :build
  depends_on "cmake" => :build
  depends_on "gettext"
  depends_on "glib"
  depends_on "readline"

  # see: https://github.com/Homebrew/homebrew/issues/26321
  needs :cxx11

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "lang"
      system "make", "install"
    end
  end
end
