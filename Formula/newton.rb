class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.97/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "bfc3b43d0ef7c3096ba61f08df589acd034d60bd20be84da460fd58b8258103b"
  version "0.5.97"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.97/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bfc3b43d0ef7c3096ba61f08df589acd034d60bd20be84da460fd58b8258103b"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
