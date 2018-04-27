class Bin < Formula
  desc "10sr bin files"
  homepage "https://github.com/10sr/bin"

  url "https://github.com/10sr/bin.git", :using => :git
  version "HEAD"

  def install
    # prefix.install_metafiles
    # libexec.install Dir["*"]
    # Dir.glob("bin/*") do |script|
    #   bin.install_symlink script
    # end
    # # bin.install_symlink Dir["#{libexec}/bin/*"]
    # bin.install "bin/save.sh"
    bin.install "bin/git-edit-index.sh" => "git-edit-index"
  end

  test do
    system "true"
  end
end
