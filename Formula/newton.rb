class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.123/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "c22fd35aa7a4f3c72cb1e4e6e81fde41ccffc93f6c6658c428babb9ea4dded8e"
  version "0.5.123"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.123/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c22fd35aa7a4f3c72cb1e4e6e81fde41ccffc93f6c6658c428babb9ea4dded8e"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
