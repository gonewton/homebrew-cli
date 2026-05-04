class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.86/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "73819e10614453cd55abff819a1da6e6007aede57cb29f4d10575e84e6e118b3"
  version "0.5.86"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.86/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "73819e10614453cd55abff819a1da6e6007aede57cb29f4d10575e84e6e118b3"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
