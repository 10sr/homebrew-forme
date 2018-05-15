class E2ansi < Formula
  desc "Syntax highlighting for `less`, powered by Emacs"
  homepage "https://github.com/Lindydancer/e2ansi"

  url "https://github.com/Lindydancer/e2ansi.git",
      :using => :git,
      :branch => "master"
  version "master"

  def install
    lib.install Dir["*.el"]
    bin.install Dir["bin/*"]
  end

  test do
    system "true"
  end
end
