require 'formula'

class Erutaso < Formula
  homepage 'http://github.com/sgymtic/sl.git'

  url 'https://github.com/sgymtic/sl.git', :using => :git,
      :revision => "ed5b15fd3c68946cff8dee629474f7fe01d67c56"

  version "5.0"

  def install
    system "make"
    bin.install "erutaso"
  end
end
