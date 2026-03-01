class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.46/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "28a7789934f2425bd84705eb62b0612b95190aedcd19d3107d39cdf3cb678b34"
  version "0.5.46"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.46/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "28a7789934f2425bd84705eb62b0612b95190aedcd19d3107d39cdf3cb678b34"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
