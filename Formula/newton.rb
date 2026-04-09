class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.73/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "d8f0f1982cef66452e002a9d588d908abea8e8479b4fc60a4f71bb2ad990648b"
  version "0.5.73"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.73/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d8f0f1982cef66452e002a9d588d908abea8e8479b4fc60a4f71bb2ad990648b"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
