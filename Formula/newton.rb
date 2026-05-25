class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.101/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "641f91c120180277215e9e2f54b1e2cef8a9b1d1d2c26d47f48ab2f73cd67fe2"
  version "0.5.101"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.101/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "641f91c120180277215e9e2f54b1e2cef8a9b1d1d2c26d47f48ab2f73cd67fe2"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
