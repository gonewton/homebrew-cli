class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.43/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "fa95fec5c6a6fdd883bcb0643491d9d1b32e5babd782734c720fbb7818a7e0fa"
  version "0.5.43"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.43/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fa95fec5c6a6fdd883bcb0643491d9d1b32e5babd782734c720fbb7818a7e0fa"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
