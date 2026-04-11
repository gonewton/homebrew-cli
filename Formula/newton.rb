class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.77/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "234ca7be4844fb25c51e88d8778969ab316263e8cafc14c52c2e636a601aa03e"
  version "0.5.77"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.77/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "234ca7be4844fb25c51e88d8778969ab316263e8cafc14c52c2e636a601aa03e"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
