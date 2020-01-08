class MacMozcEmacsHelperGooglejainput < Formula
  desc "mozc with patch"
  homepage " https://github.com/google/mozc"

  url "https://github.com/google/mozc.git",
      :revision => "afb03ddfe72dde4cf2409863a3bfea160f7a66d8"

  version "afb03dd"

  depends_on "ninja" => :build
  # depends_on "python2" => :build

  uses_from_macos "python@2"

  patch :p1 do
    url "https://gist.githubusercontent.com/10sr/f5719ec8c2e42eb12fcb51b9a33d1505/raw/633ab51170fd2e8b71a03139464c79fe46209894/mozc_emacs_helper.patch"
    sha256 "7ed609badf38bb572291b46821447247e67844f36a338f7e6126753a3fd93aa4"
  end

  def install
    ENV["GYP_DEFINES"] = "mac_sdk=#{MacOS.version} mac_deployment_target=#{MacOS.version}"
    cd "src" do
      system "/usr/bin/python", "build_mozc.py", "gyp", "--noqt", "--branding=GoogleJapaneseInput"
      system "/usr/bin/python", "build_mozc.py", "build", "-c", "Release", "unix/emacs/emacs.gyp:mozc_emacs_helper"
    end
    bin.install "src/out_mac/Release/mozc_emacs_helper"
  end

  # test do
  #   system "#{bin}/colortable16"
  # end
end
