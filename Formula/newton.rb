class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.82/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "d28b38d3a79cf747bef760b47e97e25a88f40e333ebb6eb29e4079e4baf01cfd"
  version "0.5.82"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.82/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d28b38d3a79cf747bef760b47e97e25a88f40e333ebb6eb29e4079e4baf01cfd"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
