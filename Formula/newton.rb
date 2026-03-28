class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.69/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "52c545adfdb9e8d31f588d7c1bb9ba51076165ea568f5710febd7333cf113e65"
  version "0.5.69"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.69/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "52c545adfdb9e8d31f588d7c1bb9ba51076165ea568f5710febd7333cf113e65"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
