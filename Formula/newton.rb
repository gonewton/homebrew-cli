class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.105/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "94d67700edc6d60649b22e9488ec4b2d38a67ee13739d62b826fb06a05e9f284"
  version "0.5.105"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.105/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "94d67700edc6d60649b22e9488ec4b2d38a67ee13739d62b826fb06a05e9f284"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
