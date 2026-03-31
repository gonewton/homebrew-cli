class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.72/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "39d116cfd49205d11a5a638c8ea0fed9a35c01331180f0b6ffcb92f148e02a6b"
  version "0.5.72"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.72/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "39d116cfd49205d11a5a638c8ea0fed9a35c01331180f0b6ffcb92f148e02a6b"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
