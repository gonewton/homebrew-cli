class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.82/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "c69f383c2ce045abb528a18d04e70ae5293d92a7ee627de450b688f5b860572b"
  version "0.5.82"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.82/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c69f383c2ce045abb528a18d04e70ae5293d92a7ee627de450b688f5b860572b"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
