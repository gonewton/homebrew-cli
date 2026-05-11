class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.92/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "2b4f13c2cf83a477eb3af01be84e478aad8c654c8e989cd08c2c28f4e42e776f"
  version "0.5.92"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.92/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2b4f13c2cf83a477eb3af01be84e478aad8c654c8e989cd08c2c28f4e42e776f"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
