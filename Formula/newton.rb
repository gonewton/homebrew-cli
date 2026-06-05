class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.113/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "14b86879249824dbba421d518a9e04156f2fbd231c2401b5057c5c7410477ef9"
  version "0.5.113"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.113/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "14b86879249824dbba421d518a9e04156f2fbd231c2401b5057c5c7410477ef9"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
