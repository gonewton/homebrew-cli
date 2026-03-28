class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.68/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "42e19e8ff088e0cfe557b798524d9315dc56f44c3fe1948fe5f40d6f2c570215"
  version "0.5.68"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.68/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "42e19e8ff088e0cfe557b798524d9315dc56f44c3fe1948fe5f40d6f2c570215"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
