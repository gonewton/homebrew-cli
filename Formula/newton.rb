class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.115/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "007dada4bab01922e3c83feb924abb9917614b9f0259945459246d013e3d3d76"
  version "0.5.115"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.115/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "007dada4bab01922e3c83feb924abb9917614b9f0259945459246d013e3d3d76"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
