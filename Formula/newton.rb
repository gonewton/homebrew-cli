class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.65/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "c36593c7f2b1eb5ed439de0821dc858ff6eff3ff071e950bc3a46a95208ff048"
  version "0.5.65"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.65/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c36593c7f2b1eb5ed439de0821dc858ff6eff3ff071e950bc3a46a95208ff048"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
