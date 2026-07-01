class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.124/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "81e7294d137a0f1c93bb0eb31270acb4f68eb6be7882804b850efe3ec45123f8"
  version "0.5.124"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.124/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "81e7294d137a0f1c93bb0eb31270acb4f68eb6be7882804b850efe3ec45123f8"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
