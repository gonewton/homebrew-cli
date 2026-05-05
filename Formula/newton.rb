class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.87/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "4698d4fa5d556f2ab66392cbb6ae697b1d3360cbc7108b31e773fa10f5eaf4d3"
  version "0.5.87"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.87/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4698d4fa5d556f2ab66392cbb6ae697b1d3360cbc7108b31e773fa10f5eaf4d3"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
