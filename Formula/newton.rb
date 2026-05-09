class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.90/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "1069a2387024b4d65684b30d0ee0543b41d7bc4a1cd506fb29b491d1611bee1a"
  version "0.5.90"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.90/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1069a2387024b4d65684b30d0ee0543b41d7bc4a1cd506fb29b491d1611bee1a"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
