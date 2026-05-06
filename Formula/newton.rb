class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.87/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "ad8ec72a98d88c8e3261f5e0c99c339a4de6432edfc1793dc24f7f67a8f19047"
  version "0.5.87"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.87/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ad8ec72a98d88c8e3261f5e0c99c339a4de6432edfc1793dc24f7f67a8f19047"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
