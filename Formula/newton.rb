class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.38/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "a01268fe2bc74ddb9a19d9a1a64918786d7ca0a97274eb163610be26de7b0b36"
  version "0.5.38"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.38/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a01268fe2bc74ddb9a19d9a1a64918786d7ca0a97274eb163610be26de7b0b36"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
