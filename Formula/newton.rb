class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.51/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "145a5471e6f24403d4e3982b769a1773fa2a055345bd9cc6ab5676b498387fe2"
  version "0.5.51"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.51/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "145a5471e6f24403d4e3982b769a1773fa2a055345bd9cc6ab5676b498387fe2"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
