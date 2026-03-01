class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.47/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "5f4fc912f0cfe31eba1b5af90572b8d948d047f531c5f8a2ba9b02fe08f916bf"
  version "0.5.47"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.47/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5f4fc912f0cfe31eba1b5af90572b8d948d047f531c5f8a2ba9b02fe08f916bf"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
