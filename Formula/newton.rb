class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.45/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "5e1ea504972b8460b19abf080f30c50efc835b51e0bbf2d17bb7933ba527db27"
  version "0.5.45"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.45/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5e1ea504972b8460b19abf080f30c50efc835b51e0bbf2d17bb7933ba527db27"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
