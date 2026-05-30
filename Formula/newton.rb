class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.110/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "9ec0d3607b9924b2c9ef7e34fcfb27ed318bdff30d78a181013312de14d24b41"
  version "0.5.110"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.110/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9ec0d3607b9924b2c9ef7e34fcfb27ed318bdff30d78a181013312de14d24b41"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
