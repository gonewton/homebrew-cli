class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.86/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "0d5ca5120d20e604c083f51de70081e9b8aec92e0da1c046d106212e2168be6e"
  version "0.5.86"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.86/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0d5ca5120d20e604c083f51de70081e9b8aec92e0da1c046d106212e2168be6e"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
