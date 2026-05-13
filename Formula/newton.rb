class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.94/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "6ba58838dff53428d368f74c184e2ad81e31b61e156137ed1c49c9b5ce6751c0"
  version "0.5.94"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.94/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6ba58838dff53428d368f74c184e2ad81e31b61e156137ed1c49c9b5ce6751c0"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
