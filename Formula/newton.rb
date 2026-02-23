class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.28/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "0220cc8bf48e201d25cde17049e14118b0266449f092d017be1c57f51e7d6d79"
  version "0.5.28"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.28/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0220cc8bf48e201d25cde17049e14118b0266449f092d017be1c57f51e7d6d79"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
