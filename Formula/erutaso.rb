require 'formula'

class Erutaso < Formula
  homepage 'http://github.com/sgymtic/sl.git'

  url 'https://github.com/sgymtic/sl.git', :using => :git,
      :tag => "ed5b15fd3c68946cff8dee629474f7fe01d67c56"

  def install
    system 'make'
    system 'install' '-Dm' '755' './erutaso' '#{prefix}/bin/erutaso'
  end
end
