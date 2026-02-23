class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.32/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "a27ec34d54e8f20daf3b6e9f564c59a504853d3f70046a62474af7a976773189"
  version "0.5.32"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.32/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a27ec34d54e8f20daf3b6e9f564c59a504853d3f70046a62474af7a976773189"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
