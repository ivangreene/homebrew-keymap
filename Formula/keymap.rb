class Keymap < Formula
  desc "Remap keyboard keys from the command-line"
  homepage "https://github.com/ivangreene/keymap"
  url "https://github.com/ivangreene/keymap/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "af468cf0f1f86c63dcb906d9847cfea226c777e98c091ab659f4821c81df68b5"
  depends_on "python3"

  def install
    bin.install "keymap.py" => "keymap"
    man.mkpath
    man1.install "keymap.1"
  end

  test do
    system "which", "hidutil"
    system "python", "#{prefix}/test.py"
  end
end
