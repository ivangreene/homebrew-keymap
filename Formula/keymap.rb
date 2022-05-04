class Keymap < Formula
  desc "remap keyboard keys from the command line"
  homepage "https://github.com/ivangreene/keymap"
  url "https://github.com/ivangreene/keymap/archive/v0.2.1.tar.gz"
  version "v0.2.1"
  sha256 "d314b2860e04e2580e7af55832eb22eb7b90197163b01722ebcbb0a5862b6dcc"
  depends_on "python3"

  def install
    bin.install "keymap.py" => "keymap"
    man.mkpath
    man1.install "keymap.1"
  end

  test do
    system "which hidutil"
    system "python #{prefix}/test.py"
  end
end
