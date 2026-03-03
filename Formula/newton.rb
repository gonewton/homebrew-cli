class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.56/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "8cecc49cc5385a80d7b6ceab19b67e2d44bec9fdf9e8a8a6bbbf00ccc2d72f57"
  version "0.5.56"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.56/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8cecc49cc5385a80d7b6ceab19b67e2d44bec9fdf9e8a8a6bbbf00ccc2d72f57"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
