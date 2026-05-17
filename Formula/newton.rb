class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.99/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "050857c7a35bd50f6b0ce6547b854592ed617e33e76e1ccb6b98087265a09a4e"
  version "0.5.99"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.99/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "050857c7a35bd50f6b0ce6547b854592ed617e33e76e1ccb6b98087265a09a4e"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
