class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.90/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "8862f95511de74822f14d369edbc8d0923cefc27433fcc77bff5b3bcb3f855a4"
  version "0.5.90"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.90/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8862f95511de74822f14d369edbc8d0923cefc27433fcc77bff5b3bcb3f855a4"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
