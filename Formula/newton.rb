class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.113/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "9f6a7a895063c80a61e0ae3fd81b9f13c4dbb18608774addf979d1821c6d7c83"
  version "0.5.113"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.113/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9f6a7a895063c80a61e0ae3fd81b9f13c4dbb18608774addf979d1821c6d7c83"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
