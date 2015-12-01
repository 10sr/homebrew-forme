require 'formula'

class Colors256 < Formula
  homepage 'https://gist.github.com/10sr/6852331'

  url 'https://gist.github.com/10sr/6852331.git',
      :revision => "9d9d50714a4039932bb48091e111378d73c098db"

  version "0.1"

  def install
    mv "256colors2.pl", "256colors2"
    bin.install "256colors2"
  end
end
