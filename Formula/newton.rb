class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.104/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "b97ded10973f86a7f3414602c02741e183707f96b49781d5a5face6358a0f793"
  version "0.5.104"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.104/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b97ded10973f86a7f3414602c02741e183707f96b49781d5a5face6358a0f793"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
