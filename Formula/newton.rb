class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.108/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "b713a8ac2ee716b4f5616f0473ae421d5a8ebb6ea003fe23e340bdba2be89779"
  version "0.5.108"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.108/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b713a8ac2ee716b4f5616f0473ae421d5a8ebb6ea003fe23e340bdba2be89779"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
