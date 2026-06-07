class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.114/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "2692299e8f8a384e3fe0c2a1fe6a2e1c20be9af322643b885cdd8eb51095ebbb"
  version "0.5.114"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.114/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2692299e8f8a384e3fe0c2a1fe6a2e1c20be9af322643b885cdd8eb51095ebbb"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
