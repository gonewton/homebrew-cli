class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.85/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "1394542f184a5dedd879b5ab3b12cd84392d79763da7f0881dce5a813bee92f5"
  version "0.5.85"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.85/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1394542f184a5dedd879b5ab3b12cd84392d79763da7f0881dce5a813bee92f5"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
