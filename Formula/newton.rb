class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.67/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "e177edb9c0157b5a5a9761239567a333e5aa654c92e28da927d216ad7ad9aedb"
  version "0.5.67"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.67/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e177edb9c0157b5a5a9761239567a333e5aa654c92e28da927d216ad7ad9aedb"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
