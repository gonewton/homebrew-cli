class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.29/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "4b950de04649c347f352af1cad299c1d610872d22e181cfeab4b5ecafadd3517"
  version "0.5.29"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.29/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4b950de04649c347f352af1cad299c1d610872d22e181cfeab4b5ecafadd3517"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
