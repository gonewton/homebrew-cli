class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.123/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "40d8c4ba11d391e11ffacfeadb7e4164fdba130a7fb05fc158b39aefb8192aa1"
  version "0.5.123"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.123/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "40d8c4ba11d391e11ffacfeadb7e4164fdba130a7fb05fc158b39aefb8192aa1"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
