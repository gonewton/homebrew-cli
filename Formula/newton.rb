class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.102/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "0002258dadd764717f0b2b8a5d62bebad2a1d5719cf416e60ceb5699551fd763"
  version "0.5.102"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.102/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0002258dadd764717f0b2b8a5d62bebad2a1d5719cf416e60ceb5699551fd763"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
