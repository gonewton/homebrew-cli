class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.105/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "7fef4e4a8861a72dcce28d0ccdd0b69c2226024ad4383c2451fa17c6651c5a5a"
  version "0.5.105"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.105/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7fef4e4a8861a72dcce28d0ccdd0b69c2226024ad4383c2451fa17c6651c5a5a"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
