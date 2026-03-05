class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.66/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "1d3095e737e10eea462ea60f4f7e31b534ecc8e6ca997c1330dd9cf62e5d9d3d"
  version "0.5.66"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.66/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1d3095e737e10eea462ea60f4f7e31b534ecc8e6ca997c1330dd9cf62e5d9d3d"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
