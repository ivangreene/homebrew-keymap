class Keymap < Formula
  desc "remap keyboard keys from the command line"
  homepage "https://github.com/ivangreene/keymap"
  url "https://github.com/ivangreene/keymap/archive/refs/tags/v0.2.2.tar.gz"
  version "v0.2.2"
  sha256 "e4ba0724391dc28b2c3e50ba167317aa3a567a2df27ac8932f51896b30fd2638"
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
