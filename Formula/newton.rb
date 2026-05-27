class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.106/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "79b5437424e7e33cb44e66f16aec50c6b5e16fdab8eb22b6c073a8fadc18b1ab"
  version "0.5.106"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.106/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "79b5437424e7e33cb44e66f16aec50c6b5e16fdab8eb22b6c073a8fadc18b1ab"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
