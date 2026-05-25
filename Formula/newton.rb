class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.102/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "58b46bf6405a4fd548bfc431f0b7cf0937e24222f079073c32a3c4992eb13ef1"
  version "0.5.102"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.102/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "58b46bf6405a4fd548bfc431f0b7cf0937e24222f079073c32a3c4992eb13ef1"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
