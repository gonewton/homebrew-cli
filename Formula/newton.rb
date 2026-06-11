class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.121/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "f2d4f12d2fab06d856f6f3d945dc36911de868a3b17e6d4c2ed9ee5862f9c587"
  version "0.5.121"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.121/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f2d4f12d2fab06d856f6f3d945dc36911de868a3b17e6d4c2ed9ee5862f9c587"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
