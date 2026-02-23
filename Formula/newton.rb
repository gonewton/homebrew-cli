class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.31/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "4af94bf123f0293dc1f777cfaf941c0cb3ed9b1a0c0bdc1d4d71d3ef605211e8"
  version "0.5.31"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.31/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4af94bf123f0293dc1f777cfaf941c0cb3ed9b1a0c0bdc1d4d71d3ef605211e8"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
