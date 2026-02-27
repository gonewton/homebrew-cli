class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.37/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "6b5f6f5e78598746b0bf33b17b367ab10c980e9037d385fd2d65c1106575f6dc"
  version "0.5.37"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.37/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6b5f6f5e78598746b0bf33b17b367ab10c980e9037d385fd2d65c1106575f6dc"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
