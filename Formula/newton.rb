class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.90/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "7258a1434b3700e602d80a86e8da62ff29df68954b1dd4c09a26368ef54da37b"
  version "0.5.90"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.90/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7258a1434b3700e602d80a86e8da62ff29df68954b1dd4c09a26368ef54da37b"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
