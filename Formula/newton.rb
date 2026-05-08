class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.89/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "aa310f4385844e2b671ccb679e6eed11211d81d73b7b90da5fd13e93e3bdc3d2"
  version "0.5.89"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.89/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aa310f4385844e2b671ccb679e6eed11211d81d73b7b90da5fd13e93e3bdc3d2"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
