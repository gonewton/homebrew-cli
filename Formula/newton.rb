class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.83/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "cb6852675ec82b9cbb151824a235bfb7b6405121daaa93088e2271c7fe8decd4"
  version "0.5.83"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.83/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cb6852675ec82b9cbb151824a235bfb7b6405121daaa93088e2271c7fe8decd4"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
