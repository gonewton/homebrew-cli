class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.36/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "44607cce64382776d70f73958d3fea4439368578e3d3310579907b2f584bfca2"
  version "0.5.36"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.36/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "44607cce64382776d70f73958d3fea4439368578e3d3310579907b2f584bfca2"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
