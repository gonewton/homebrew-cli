class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.83/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "ba7ae2dffc91f71b4600d51f9bd4710cd478f19d7bdeb1fa8557d054aaaf5527"
  version "0.5.83"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.83/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ba7ae2dffc91f71b4600d51f9bd4710cd478f19d7bdeb1fa8557d054aaaf5527"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
