class Pkg10sr < Formula
  desc "My packges"
  homepage "https://github.com/martanne/vis"

  url "https://github.com/10sr/homebrew-pkg.git",
      :tag => "master"

  version "master"

  depends_on "micro"
  depends_on "git"

  def install
    system "echo", "installed"
  end

end
