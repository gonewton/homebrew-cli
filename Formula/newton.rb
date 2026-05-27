class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.104/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "84009d062e5d951e6e70fa1dc9383c0b6cb9fb68f458e46b68ea8c0ec726ee62"
  version "0.5.104"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.104/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "84009d062e5d951e6e70fa1dc9383c0b6cb9fb68f458e46b68ea8c0ec726ee62"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
