class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.123/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "6cc6773f5cbe09845ca3a8d1bb3d883b5e65421c9785b881c48995992d4cc7b0"
  version "0.5.123"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.123/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6cc6773f5cbe09845ca3a8d1bb3d883b5e65421c9785b881c48995992d4cc7b0"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
