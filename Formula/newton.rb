class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.92/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "a3f4bb22eee1ed86f5476be21f4de2bdf93f24d35790b4d44c83839d1f9f086f"
  version "0.5.92"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.92/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a3f4bb22eee1ed86f5476be21f4de2bdf93f24d35790b4d44c83839d1f9f086f"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
