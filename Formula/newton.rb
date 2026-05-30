class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.109/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "c82cbb8c375a647e2f88fd1ff529130758582bb3c96e008d84ee761d41dc9d0c"
  version "0.5.109"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.109/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c82cbb8c375a647e2f88fd1ff529130758582bb3c96e008d84ee761d41dc9d0c"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
