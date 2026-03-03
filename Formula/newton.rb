class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.61/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "2e8f83adfeebb7017ef530f5861f272827f950d57a60c66d955b1866e0e3c286"
  version "0.5.61"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.61/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2e8f83adfeebb7017ef530f5861f272827f950d57a60c66d955b1866e0e3c286"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
