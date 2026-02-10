class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.14/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "677ddb330aea40ee7c592d1431e38bd578c97177f9a86a23e7f9b3de5046d7a8"
  version "0.5.14"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.14/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "677ddb330aea40ee7c592d1431e38bd578c97177f9a86a23e7f9b3de5046d7a8"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
