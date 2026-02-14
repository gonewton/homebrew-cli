class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.24/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "85b6f2a1ee92d6cbc05ce73ea356fe62e28d8ff1d67e25cd3cfa6d4c9470259f"
  version "0.5.24"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.24/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "85b6f2a1ee92d6cbc05ce73ea356fe62e28d8ff1d67e25cd3cfa6d4c9470259f"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
