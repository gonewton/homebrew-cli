class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.94/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "9ff347821a593dae1887f7bdee62e1cb9febfded82cff51014c194f443e46902"
  version "0.5.94"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.94/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9ff347821a593dae1887f7bdee62e1cb9febfded82cff51014c194f443e46902"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
