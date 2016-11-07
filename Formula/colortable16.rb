class Colortable16 < Formula
  desc "Print 16 color table"
  homepage "https://github.com/alghanmi/terminal_color_test"

  url "https://github.com/alghanmi/terminal_color_test.git",
      :revision => "372ee39a02264025c72f69d66815ddeb6d063242"

  version "0.1"

  def install
    mv "colortable16.sh", "colortable16"
    bin.install "colortable16"
  end

  test do
    system "#{bin}/colortable16"
  end
end
