class Pkg10sr < Formula
  desc "My packges"
  homepage "https://github.com/10sr/homebrew-pkg"

  url "https://github.com/10sr/homebrew-pkg.git",
      :tag => "master"

  version "master"

  depends_on "micro"
  depends_on "git"
  depends_on "bat"
  depends_on "ripgrep"

  def install
    system "echo", "installed"
  end

end
