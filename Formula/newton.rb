class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.20/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "d402f9e1b490f16a3d2269815108d76b1951f4d3cf5b0df88ebae01eddf483f9"
  version "0.5.20"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.20/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d402f9e1b490f16a3d2269815108d76b1951f4d3cf5b0df88ebae01eddf483f9"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
