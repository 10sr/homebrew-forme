class Pyonpyon < Formula
  desc "Improve your good habit of mistyping"
  homepage "https://github.com/sgymtic/sl/tree/pyonpyon"

  url "https://github.com/sgymtic/sl.git",
      :revision => "d1278cb1f82563ee4aff5a4ef8b4554d78c9130c"

  version "5.0"

  def install
    system "make"
    bin.install "pyonpyon"
  end

  test do
    system "#{bin}/pyonpyon"
  end
end
