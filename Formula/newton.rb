class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.21/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "9998fe24538edb31da24175e889a11b57e7e62f9effa98ffa24cd707675279e7"
  version "0.5.21"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.21/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9998fe24538edb31da24175e889a11b57e7e62f9effa98ffa24cd707675279e7"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
