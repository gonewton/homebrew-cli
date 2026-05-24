class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.101/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "d0d6a676840251fcc85bf269a94ae9bd01f9c1f427569b6bde02390eb6ae6a4d"
  version "0.5.101"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.101/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d0d6a676840251fcc85bf269a94ae9bd01f9c1f427569b6bde02390eb6ae6a4d"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
