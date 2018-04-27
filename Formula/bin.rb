class Bin < Formula
  desc "10sr bin files"
  homepage "https://github.com/10sr/bin"

  head "https://github.com/10sr/bin.git",
      :using => :git,
      :branch => "master"
  version "master"

  def install
    bin.install Dir["bin/*"]
  end

  test do
    system "true"
  end
end
