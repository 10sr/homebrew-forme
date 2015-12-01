class Erutaso < Formula
  desc "Improve your good habit of mistyping"
  homepage "https://github.com/sgymtic/sl.git"

  url "https://github.com/sgymtic/sl.git",
      :revision => "ed5b15fd3c68946cff8dee629474f7fe01d67c56"

  version "5.0"

  def install
    system "make"
    bin.install "erutaso"
  end

  test do
    system "#{bin}/erutaso"
  end
end
