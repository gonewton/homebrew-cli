class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.117/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "4a71c98e5b506a6a6f839a9c7ef475b21119a0c1c059ac05118491723e1473a4"
  version "0.5.117"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.117/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4a71c98e5b506a6a6f839a9c7ef475b21119a0c1c059ac05118491723e1473a4"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
