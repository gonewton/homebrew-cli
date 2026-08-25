class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.127/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "9a6d64644a0140beef0c649d05a47aeb4e398e7f6abb7a4f7760998922526fc0"
  version "0.5.127"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.127/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9a6d64644a0140beef0c649d05a47aeb4e398e7f6abb7a4f7760998922526fc0"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
