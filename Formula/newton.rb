class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.78/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "436915d4d3752cbd4608c8c9831b59789e4dc3b7ab23809461fcd22ac605c344"
  version "0.5.78"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.78/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "436915d4d3752cbd4608c8c9831b59789e4dc3b7ab23809461fcd22ac605c344"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
