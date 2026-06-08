class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.115/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "e3f94c15b287827ef350fe667d268888f7f49fce898d3ecc8e695eae351346e0"
  version "0.5.115"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.115/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e3f94c15b287827ef350fe667d268888f7f49fce898d3ecc8e695eae351346e0"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
