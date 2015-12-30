class BleSh < Formula
  desc "Bash Line Editor"
  homepage "https://github.com/akinomyaga/ble.sh"

  url "https://github.com/akinomyoga/ble.sh.git",
      :tag => "v0.1.4"

  version "0.1.4"

  def install
    system "make"
    lib.install "out/ble.sh"
  end
end
