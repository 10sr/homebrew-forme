class SdcvDictOxford < Formula
  desc "Stardict oxford"
  homepage "https://sites.google.com/site/gtonguedict/home/stardict-dictionaries"

  url "http://downloads.sourceforge.net/xdxf/stardict-comn_dls03_oxford-2.4.2.tar.bz2"
  sha256 "1c07bca79aff349fd4d86db658aa5ebe7b6b6fe7b8f90317d1150b585aacb4e5"

  def install
    pkgshare.install Dir["*"]
  end

  test do
  end
end
