class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.121/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "af92fda4a6ade2f24b63698c26bbbd45557214ef4b0e82411e9eb32989c39413"
  version "0.5.121"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.121/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "af92fda4a6ade2f24b63698c26bbbd45557214ef4b0e82411e9eb32989c39413"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
