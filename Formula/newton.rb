class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.71/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "b244acf15bd66fca0d0549eeed3c2b2fb3a323634389e0747d04b2391e656150"
  version "0.5.71"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.71/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b244acf15bd66fca0d0549eeed3c2b2fb3a323634389e0747d04b2391e656150"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
