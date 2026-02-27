class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.35/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "b350cfcd1f57b0a47183d6bbfe4ce6de4c96df1e535777dcab807a49ea04f709"
  version "0.5.35"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.35/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b350cfcd1f57b0a47183d6bbfe4ce6de4c96df1e535777dcab807a49ea04f709"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
