class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.80/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "008be00e5cc3b5d45448dfc3ddd065dcd4d559c7aced29e90d6ecb4a7586e975"
  version "0.5.80"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.80/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "008be00e5cc3b5d45448dfc3ddd065dcd4d559c7aced29e90d6ecb4a7586e975"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
