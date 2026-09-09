class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.128/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "d15d38941fc48f84cc8ae2cea164295bcae21e2f2e222b891fc957b1c3485d36"
  version "0.5.128"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.128/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d15d38941fc48f84cc8ae2cea164295bcae21e2f2e222b891fc957b1c3485d36"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
