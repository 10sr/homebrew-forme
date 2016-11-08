class BleSh < Formula
  desc "Bash Line Editor"
  homepage "https://github.com/akinomyoga/ble.sh"

  url "https://github.com/akinomyoga/ble.sh.git",
      :tag => "v0.1.6"

  version "0.1.6"

  depends_on "gawk" => :build

  def install
    system "make"
    lib.install "out" => "ble-sh"
  end
end
