class Pyonpyon < Formula
  desc "Improve your good habit of mistyping"
  homepage "https://github.com/sgymtic/sl/tree/pyonpyon"

  # url "https://github.com/sgymtic/sl/archive/pyonpyon.tar.gz",
  url "https://github.com/sgymtic/sl/archive/pyonpyon.tar.gz"

  version "5.0"

  def install
    system "make"
    bin.install "pyonpyon"
  end

  test do
    system "#{bin}/pyonpyon"
  end
end
