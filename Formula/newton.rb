class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.94/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "5f1c9fd90377012e1e62e08920da313efd2399ab3f8d868de4de26b32045ed39"
  version "0.5.94"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.94/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5f1c9fd90377012e1e62e08920da313efd2399ab3f8d868de4de26b32045ed39"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
