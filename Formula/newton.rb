class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.76/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "070a555b6d55071e2ab07a671f1c38532f91c5759c5bfe615dc07409b9f14705"
  version "0.5.76"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.76/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "070a555b6d55071e2ab07a671f1c38532f91c5759c5bfe615dc07409b9f14705"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
