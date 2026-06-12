class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.122/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "6497e352d70b03393732a9a047b18c8300b258d2874199b20e0c412d6a6db2e5"
  version "0.5.122"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.122/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6497e352d70b03393732a9a047b18c8300b258d2874199b20e0c412d6a6db2e5"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
