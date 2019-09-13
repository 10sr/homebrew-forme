require "language/go"

class GitBug < Formula
  desc "Distributed bug tracker embedded in Git"
  homepage "https://github.com/MichaelMure/git-bug"
  url "https://github.com/MichaelMure/git-bug.git",
      :revision => "0.5.0"
  head "https://github.com/MichaelMure/git-bug.git", :shallow => false

  version "0.5.0"

  # bottle do
  #   cellar :any_skip_relocation
  #   sha256 "08aae3031f30b5502bd93b26c4a2e655077f3a91c212b04898c19d14444ec0e6" => :mojave
  #   sha256 "b0d584ae926816c4f525c9070cb67c7622e851c3cbba67e7c0b9cae5d30feb00" => :high_sierra
  #   sha256 "42fbf76075951fd28a27b4e2763b3af58eb93b0260c3a3c82719d7a32ef7baec" => :sierra
  #   sha256 "6ee1bdf8b60fe3c3528a4a2698f19518a7bf71838ceba58ab9a199a6624f3dba" => :el_capitan
  #   sha256 "170f9861eb8843932556284268f1a00e3e0a0c455e35b55c11e44c5b325ced85" => :yosemite
  # end

  depends_on "go" => :build

  # go_resource "github.com/svent/go-flags" do
  #   url "https://github.com/svent/go-flags.git",
  #       :revision => "4bcbad344f0318adaf7aabc16929701459009aa3"
  # end

  # go_resource "github.com/svent/go-nbreader" do
  #   url "https://github.com/svent/go-nbreader.git",
  #       :revision => "7cef48da76dca6a496faa7fe63e39ed665cbd219"
  # end

  # go_resource "golang.org/x/crypto" do
  #   url "https://go.googlesource.com/crypto.git",
  #       :revision => "3c0d69f1777220f1a1d2ec373cb94a282f03eb42"
  # end

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"src/github.com/MichaelMure/git-bug").install buildpath.children
    # Language::Go.stage_deps resources, buildpath/"src"
    cd "src/github.com/MichaelMure/git-bug" do
      system "make", "build"
      bin.install "git-bug"
      prefix.install_metafiles
    end
  end

  test do
    assert_match "git-bug version", shell_output("#{bin}/git-bug --version")
  end
end
