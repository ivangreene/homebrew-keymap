class Keymap < Formula
  desc "remap keyboard keys from the command line"
  homepage "https://github.com/ivangreene/keymap"
  url "https://github.com/ivangreene/keymap/archive/v0.2.0.tar.gz"
  version "v0.2.0"
  sha256 "163a2d97f7cb9c9117cd30d51cf2494e5ddaccd586af7582dcd698684e76c233"
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
