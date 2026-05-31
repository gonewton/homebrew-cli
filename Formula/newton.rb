class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.111/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "c603827805a948608a6d0ba8d760beccef97b401f08775a5d58cd16e7cd4bb35"
  version "0.5.111"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.111/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c603827805a948608a6d0ba8d760beccef97b401f08775a5d58cd16e7cd4bb35"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
