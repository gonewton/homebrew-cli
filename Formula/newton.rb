class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.80/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "750abd9f43ffca3a0e94214541fe6862117fae825ba15b9343072b4caef5aef3"
  version "0.5.80"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.80/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "750abd9f43ffca3a0e94214541fe6862117fae825ba15b9343072b4caef5aef3"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
