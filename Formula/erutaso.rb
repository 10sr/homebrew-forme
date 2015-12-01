class Erutaso < Formula
  desc "Improve your good habit of mistyping"
  homepage "https://github.com/sgymtic/sl.git"

  url "https://github.com/sgymtic/sl/archive/master.tar.gz"

  version "5.0"

  def install
    system "make"
    bin.install "erutaso"
  end

  test do
    system "#{bin}/erutaso"
  end
end
