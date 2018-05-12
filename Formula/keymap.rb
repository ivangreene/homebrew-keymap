class Keymap < Formula
  desc "remap keyboard keys from the command line"
  homepage "https://github.com/ivangreene/keymap"
  url "https://github.com/ivangreene/keymap/archive/v0.1.2.tar.gz"
  version "v0.1.2"
  sha256 "93c4837d81af9f47098a479dc82e74f9bd8dc09a6be36369dee75ad7b8f39ace"

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
