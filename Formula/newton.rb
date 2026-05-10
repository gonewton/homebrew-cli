class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.91/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "ace59c1f944fd4ea1b1f65d0ec2476c2c28124ff81ba8ecdade011c4f92b2cb2"
  version "0.5.91"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.91/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ace59c1f944fd4ea1b1f65d0ec2476c2c28124ff81ba8ecdade011c4f92b2cb2"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
