class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.78/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "da01ab0ad933f2dce8601012b1823871d4555af401c6d6d3ec651271e872c55b"
  version "0.5.78"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.78/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da01ab0ad933f2dce8601012b1823871d4555af401c6d6d3ec651271e872c55b"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
