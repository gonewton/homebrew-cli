class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.22/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "6d4c3e0d7752016dd07e764fd507ba4289a1c34dd55661787b3449a33132a382"
  version "0.5.22"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.22/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6d4c3e0d7752016dd07e764fd507ba4289a1c34dd55661787b3449a33132a382"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
