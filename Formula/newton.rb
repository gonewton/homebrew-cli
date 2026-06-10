class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.118/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "519df7b00bf4cea36d44963b898f07c06f623c7fd3f37edb797d2add21bfc471"
  version "0.5.118"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.118/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "519df7b00bf4cea36d44963b898f07c06f623c7fd3f37edb797d2add21bfc471"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
