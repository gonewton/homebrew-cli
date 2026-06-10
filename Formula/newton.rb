class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.119/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "32465e3fe81c21c9bef7d7d0f02eeefc1aa8c394313a3011942b317f57d09d0a"
  version "0.5.119"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.119/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "32465e3fe81c21c9bef7d7d0f02eeefc1aa8c394313a3011942b317f57d09d0a"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
