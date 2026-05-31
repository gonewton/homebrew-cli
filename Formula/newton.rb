class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.110/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "7d700f14b3f44a7769ac4ff6db157bbb039ba1a4b402ec165c579fc20f7af463"
  version "0.5.110"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.110/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7d700f14b3f44a7769ac4ff6db157bbb039ba1a4b402ec165c579fc20f7af463"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
