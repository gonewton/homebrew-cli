class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.113/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "d6a994635f8320c5fb1fc419eb4148630243d4a71646d57652a3fe8269700a00"
  version "0.5.113"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.113/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d6a994635f8320c5fb1fc419eb4148630243d4a71646d57652a3fe8269700a00"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
