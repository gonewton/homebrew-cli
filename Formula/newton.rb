class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.81/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "bae60d89a8d9b41db23e03b1ebee62dd4d49db12ec50c48c1f0b2f8874347056"
  version "0.5.81"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.81/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bae60d89a8d9b41db23e03b1ebee62dd4d49db12ec50c48c1f0b2f8874347056"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
