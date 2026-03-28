class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.71/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "517e8c1697ab5391d9aaceb9f76ce52a50256df45ec448b95f0545c3867b2f69"
  version "0.5.71"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.71/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "517e8c1697ab5391d9aaceb9f76ce52a50256df45ec448b95f0545c3867b2f69"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
