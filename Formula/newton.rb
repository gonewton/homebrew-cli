class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.93/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "3603731f86869584d6bbc3eea6dd914c98bdf1bb6ac3a8968a6516c6cdefb80c"
  version "0.5.93"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.93/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3603731f86869584d6bbc3eea6dd914c98bdf1bb6ac3a8968a6516c6cdefb80c"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
