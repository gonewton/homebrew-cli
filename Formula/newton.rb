class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.50/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "ac35ff4eec19dd121fb53b113e3240654fa3424c125318b04745ac1d08f102b9"
  version "0.5.50"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.50/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ac35ff4eec19dd121fb53b113e3240654fa3424c125318b04745ac1d08f102b9"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
