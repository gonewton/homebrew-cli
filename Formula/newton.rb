class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.110/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "6edfdc9a227808b8a0b743bbb2af2395a0ad7ba0a98de7fe603c81ef0944b78b"
  version "0.5.110"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.110/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6edfdc9a227808b8a0b743bbb2af2395a0ad7ba0a98de7fe603c81ef0944b78b"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
