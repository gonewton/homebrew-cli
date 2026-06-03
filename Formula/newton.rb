class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.111/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "80e72a84c9931e1deeef0bb76c7e749eeeece24a8345a6da9638a3976c5197c0"
  version "0.5.111"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.111/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "80e72a84c9931e1deeef0bb76c7e749eeeece24a8345a6da9638a3976c5197c0"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
