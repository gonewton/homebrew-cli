class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.103/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "be3dda5e78c8b6d708fab3f75d4629e0805d980cf7fc397c2d80a0abbd18d15d"
  version "0.5.103"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.103/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "be3dda5e78c8b6d708fab3f75d4629e0805d980cf7fc397c2d80a0abbd18d15d"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
