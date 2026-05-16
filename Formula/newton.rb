class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.97/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "70bd9623c365799e5938d60f3efe42bef03920b08cfd80bc13062a4d8ad51a7a"
  version "0.5.97"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.97/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "70bd9623c365799e5938d60f3efe42bef03920b08cfd80bc13062a4d8ad51a7a"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
