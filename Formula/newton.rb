class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.95/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "405d18cff9b468bac10157c1c5a49cacf1234e9a8d4d1521de09d80b0bac1df1"
  version "0.5.95"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.95/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "405d18cff9b468bac10157c1c5a49cacf1234e9a8d4d1521de09d80b0bac1df1"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
