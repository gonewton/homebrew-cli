class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.92/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "59201d060a87ff3137367e6a13b0595672f0566bb3b717063707c63089923423"
  version "0.5.92"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.92/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "59201d060a87ff3137367e6a13b0595672f0566bb3b717063707c63089923423"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
