class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.81/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "ba502b0828f83a478b553a3fec648672fb72cc9810a6d4595eda633d8c3a3ffa"
  version "0.5.81"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.81/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ba502b0828f83a478b553a3fec648672fb72cc9810a6d4595eda633d8c3a3ffa"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
