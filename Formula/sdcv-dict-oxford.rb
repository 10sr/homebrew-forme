class SdcvDictOxford < Formula
  desc "Stardict oxford"
  homepage "https://sites.google.com/site/gtonguedict/home/stardict-dictionaries"

  url "http://downloads.sourceforge.net/xdxf/stardict-comn_dls03_oxford-2.4.2.tar.bz2"
  sha256 "8b3c38143eb7351fbc816d0d3bd87c08da26e5439a7e93ae53b75af1897e412c"

  def install
    share.install Dir["*"]
  end

  test do
  end
end
