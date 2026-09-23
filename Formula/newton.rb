class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.131/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "285eb729023c4bd3456804779417a16504b8af0e67ead5ca3e9e197437db0429"
  version "0.5.131"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.131/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "285eb729023c4bd3456804779417a16504b8af0e67ead5ca3e9e197437db0429"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
