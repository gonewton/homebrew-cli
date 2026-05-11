class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.93/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "5d57f6f36f2f355362347de0388bdc03927e9d3bcdc9d936eecfe71382dbce51"
  version "0.5.93"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.93/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5d57f6f36f2f355362347de0388bdc03927e9d3bcdc9d936eecfe71382dbce51"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
