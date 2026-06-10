class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.118/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "9d921721a416d44c2b81f9ca6a6810821295013d5c7b2124d6315bd4df6c87a5"
  version "0.5.118"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.118/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9d921721a416d44c2b81f9ca6a6810821295013d5c7b2124d6315bd4df6c87a5"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
