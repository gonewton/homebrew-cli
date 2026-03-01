class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.44/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "57963cee38f08eb3ab66c2228db34f57d2e986544cafac71a6002a808ed21c8f"
  version "0.5.44"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.44/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "57963cee38f08eb3ab66c2228db34f57d2e986544cafac71a6002a808ed21c8f"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
