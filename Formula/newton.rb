class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.72/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "23c3eb9eeb838f443c47f60abc037d6f7f877dafc8af2f339e7275a6ce656863"
  version "0.5.72"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.72/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "23c3eb9eeb838f443c47f60abc037d6f7f877dafc8af2f339e7275a6ce656863"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
