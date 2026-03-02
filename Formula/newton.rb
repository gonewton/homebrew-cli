class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.54/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "7ba47b98906a92ceb28d3f7799618c9bc7630322ad0c5b088d2e02acf3f55010"
  version "0.5.54"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.54/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7ba47b98906a92ceb28d3f7799618c9bc7630322ad0c5b088d2e02acf3f55010"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
