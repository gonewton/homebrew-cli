class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.125/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "393e2cd40cb83ce9998e9ba4650a06dd3c9eb34fe3b46b3c9bdb8b24f8d42096"
  version "0.5.125"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.125/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "393e2cd40cb83ce9998e9ba4650a06dd3c9eb34fe3b46b3c9bdb8b24f8d42096"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
