class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.78/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "6dde4a44d57eda7fc23ed2a0d07eccd87b88b67f5cc0d856e0335db8fdbd664a"
  version "0.5.78"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.78/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6dde4a44d57eda7fc23ed2a0d07eccd87b88b67f5cc0d856e0335db8fdbd664a"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
