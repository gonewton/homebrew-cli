class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.81/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "95662a06f3504a31976433965c301275a9077531a43170e60465fc0b7e4b02c6"
  version "0.5.81"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.81/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "95662a06f3504a31976433965c301275a9077531a43170e60465fc0b7e4b02c6"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
