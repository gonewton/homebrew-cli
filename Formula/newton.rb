class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.25/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "7eb7f9638c9cac23560543eac0f4c42a9fa46b239cb4242d496b74caf6d05e0d"
  version "0.5.25"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.25/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7eb7f9638c9cac23560543eac0f4c42a9fa46b239cb4242d496b74caf6d05e0d"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
