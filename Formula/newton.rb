class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.98/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "6a6645e79064ac54b5bae179d29a6217b576b70bdab0d062eed99343c4ac5e8e"
  version "0.5.98"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.98/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6a6645e79064ac54b5bae179d29a6217b576b70bdab0d062eed99343c4ac5e8e"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
