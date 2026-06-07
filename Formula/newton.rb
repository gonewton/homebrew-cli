class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.113/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "c60b10e0baf01df81d343acf357d3faccb4388d3af6e22e0682cdb45167a07d0"
  version "0.5.113"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.113/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c60b10e0baf01df81d343acf357d3faccb4388d3af6e22e0682cdb45167a07d0"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
