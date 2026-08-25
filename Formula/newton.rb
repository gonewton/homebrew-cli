class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.126/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "62dd0446089c1b9eb9861c3b67da4c29baedd90a1be059f5bbe2c7bed102e503"
  version "0.5.126"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.126/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "62dd0446089c1b9eb9861c3b67da4c29baedd90a1be059f5bbe2c7bed102e503"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
