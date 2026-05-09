class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.91/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "7c6fed0ccf957bc0c3d1009b0b220f88f0e67e5effdc264993616472ca414a37"
  version "0.5.91"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.91/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7c6fed0ccf957bc0c3d1009b0b220f88f0e67e5effdc264993616472ca414a37"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
