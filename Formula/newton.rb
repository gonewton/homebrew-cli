class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.87/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "93ca1f515fcd9a3710a34fb4e518db1b520880439f1d76b8162ef193d2ce9b11"
  version "0.5.87"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.87/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "93ca1f515fcd9a3710a34fb4e518db1b520880439f1d76b8162ef193d2ce9b11"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
