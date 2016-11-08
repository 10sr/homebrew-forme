class Vis < Formula
  desc "A vim like text editor"
  homepage "https://github.com/martanne/vis"

  url "https://github.com/martanne/vis.git",
      :tag => "v0.2"

  version "0.2"

  depends_on "ncurses"
  depends_on "libtermkey"
  depends_on "lua"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

end
