class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.52/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "00ead0747749576bc0c65f7b66c1ec92ff9734e49612bc928494ac163ba9b815"
  version "0.5.52"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.52/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "00ead0747749576bc0c65f7b66c1ec92ff9734e49612bc928494ac163ba9b815"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
