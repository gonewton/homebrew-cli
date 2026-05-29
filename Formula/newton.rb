class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.108/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "5b7bac40807338e190da28c105fbb7023b3333dda81a8cd3915ac1098338f9cf"
  version "0.5.108"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.108/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5b7bac40807338e190da28c105fbb7023b3333dda81a8cd3915ac1098338f9cf"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
