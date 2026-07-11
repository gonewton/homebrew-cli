class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.124/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "89c9a75ad737d589f96e90a91e8c48280a55bad5afe265845b08a8d720ad8638"
  version "0.5.124"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.124/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "89c9a75ad737d589f96e90a91e8c48280a55bad5afe265845b08a8d720ad8638"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
