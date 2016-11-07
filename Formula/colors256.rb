class Colors256 < Formula
  desc "Print 256 color table"
  homepage "https://github.com/alghanmi/terminal_color_test"

  url "https://github.com/alghanmi/terminal_color_test.git",
      :revision => "372ee39a02264025c72f69d66815ddeb6d063242"

  version "0.1"

  def install
    mv "256colors2.pl", "256colors2"
    bin.install "256colors2"
  end

  test do
    system "#{bin}/256colors2"
  end
end
