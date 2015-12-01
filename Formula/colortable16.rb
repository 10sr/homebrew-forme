require 'formula'

class Colortable16 < Formula
  homepage 'http://gist.github.com/6852317'

  url 'https://gist.github.com/6852317.git',
      :revision => "84d8fc4ce9d3a18f1ccdd81f049abe9b13aff4ba"

  version "0.1"

  def install
    mv "colortable16.sh", "colortable16"
    bin.install "colortable16"
  end
end
