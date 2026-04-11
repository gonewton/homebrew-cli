class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.78/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "924847b772a9c62f196a2e7d49713f5d7a0b42acd5081adac3f5fff953605cfd"
  version "0.5.78"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.78/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "924847b772a9c62f196a2e7d49713f5d7a0b42acd5081adac3f5fff953605cfd"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
