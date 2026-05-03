class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.84/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "78b003e334fc0d8680e659eaab002a4c461f6329334090533b36fa10bcca40de"
  version "0.5.84"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.84/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "78b003e334fc0d8680e659eaab002a4c461f6329334090533b36fa10bcca40de"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
