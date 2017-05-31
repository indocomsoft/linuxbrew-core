class Qcachegrind < Formula
  desc "Visualize data generated by Cachegrind and Calltree"
  homepage "https://kcachegrind.github.io/"
  url "https://download.kde.org/stable/applications/17.04.1/src/kcachegrind-17.04.1.tar.xz"
  sha256 "eea7557a38ec5d9d8015a9025450180ee80f3b834518706dde0e4b37cee91878"

  bottle do
    cellar :any
    sha256 "bb66e62b546a24d7203160d1a1e7c10f5cae7466681aad2352b4ac6aab24d6b5" => :sierra
    sha256 "0278b0112583927438b65788bc9486460946befe77faab0d00a1d942202c6806" => :el_capitan
    sha256 "e8dac3e32f70afd7870f9aa87cb89b62358e58db803aabc73bc1c9ba5d4afb32" => :yosemite
  end

  depends_on "qt"
  depends_on "graphviz" => :optional

  def install
    if OS.mac?
      cd "qcachegrind"
      system "#{Formula["qt"].opt_bin}/qmake", "-spec", "macx-clang",
                                               "-config", "release"
      system "make"
      prefix.install "qcachegrind.app"
      bin.install_symlink prefix/"qcachegrind.app/Contents/MacOS/qcachegrind"
    else
      system "qmake", "-config", "release"
      system "make"
      bin.install "qcachegrind/qcachegrind"
    end
  end
end
