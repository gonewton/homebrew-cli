class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.90/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "f8e18dd5250aabc19c94d87d029625271d1b6fa4747d94c08c22840824e90ed0"
  version "0.5.90"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.90/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f8e18dd5250aabc19c94d87d029625271d1b6fa4747d94c08c22840824e90ed0"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
