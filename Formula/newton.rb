class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.58/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "1f5f7baf35a6dab99b48aeb215fbe3daa5bd550e511fedb506a03ce7c5613ba6"
  version "0.5.58"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.58/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1f5f7baf35a6dab99b48aeb215fbe3daa5bd550e511fedb506a03ce7c5613ba6"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
