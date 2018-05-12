class Keymap < Formula
  desc "remap keyboard keys from the command line"
  homepage "https://github.com/ivangreene/keymap"
  url "https://github.com/ivangreene/keymap/archive/v0.1.0.tar.gz"
  version "v0.1.0"
  sha256 "fd05aaa1778d11d4c281accc03ddd0ab799d395490ba3928f48b7fdf8336cb94"

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
