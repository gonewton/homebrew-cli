class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.30/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "fb2524014a29060be3ff9c40f66d0a902daf8aa6cbb40884348ed74c35bfac87"
  version "0.5.30"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.30/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fb2524014a29060be3ff9c40f66d0a902daf8aa6cbb40884348ed74c35bfac87"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
