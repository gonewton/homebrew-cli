class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.49/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "a30a07b635f73d5046dbe360358e31119776bc5b53749585ef397f0d4640279e"
  version "0.5.49"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.49/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a30a07b635f73d5046dbe360358e31119776bc5b53749585ef397f0d4640279e"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
