class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.70/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "4257988d279f75d0b579c91cf50febd863132f9cbefb71fc69fd6b6e72f94e7e"
  version "0.5.70"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.70/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4257988d279f75d0b579c91cf50febd863132f9cbefb71fc69fd6b6e72f94e7e"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
