class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.116/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "4bf813d68b393be347e0b44addea0d26db4da28458c86d9903c206a2054be4dc"
  version "0.5.116"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.116/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4bf813d68b393be347e0b44addea0d26db4da28458c86d9903c206a2054be4dc"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
