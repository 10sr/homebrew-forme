class BleSh < Formula
  desc "Bash Line Editor"
  homepage "https://github.com/akinomyoga/ble.sh"

  url "https://github.com/akinomyoga/ble.sh.git",
      :tag => "v0.1.4"

  version "0.1.4"

  depends_on "gawk" => :build

  def install
    system "sed", "-ie", "s|^#!/usr/bin/gawk|#!/usr/bin/env gawk|", "ext/mwg_pp.awk"
    system "make"
    lib.install "out" => "ble-sh"
  end
end
