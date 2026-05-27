class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.106/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "4b5761a3c283c7930c7a70b139361dc5b4adeff9fc502d88e2f658d5baa2ca4d"
  version "0.5.106"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.106/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4b5761a3c283c7930c7a70b139361dc5b4adeff9fc502d88e2f658d5baa2ca4d"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
