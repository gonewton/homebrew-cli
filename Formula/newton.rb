class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.83/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "4070cc0ce39e03b5a2999c40d523b17d6f3d16b8f2a613ecc485c785cfa2ea31"
  version "0.5.83"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.83/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4070cc0ce39e03b5a2999c40d523b17d6f3d16b8f2a613ecc485c785cfa2ea31"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
