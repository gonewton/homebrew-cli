class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.42/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "9c47dff51df0f3948b154c6a7f8812e17d08aa5a78571812e73e1bf3959f8a41"
  version "0.5.42"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.42/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9c47dff51df0f3948b154c6a7f8812e17d08aa5a78571812e73e1bf3959f8a41"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
