class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.112/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "b27bd922c0dfbb2b5c1ee91bd2d0636d287695fe80a4d236905916556bd04db8"
  version "0.5.112"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.112/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b27bd922c0dfbb2b5c1ee91bd2d0636d287695fe80a4d236905916556bd04db8"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
