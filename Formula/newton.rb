class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.96/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "96c3b797b2de6fbd7f43f1552f8a92b96c0f331995508b575d6bbd17703ede3d"
  version "0.5.96"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.96/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "96c3b797b2de6fbd7f43f1552f8a92b96c0f331995508b575d6bbd17703ede3d"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
