class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.23/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "bdf225d4eb82590be50dcdccac0154fc5dab80e4f3b2f13b36bd8fe36a118dff"
  version "0.5.23"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.23/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bdf225d4eb82590be50dcdccac0154fc5dab80e4f3b2f13b36bd8fe36a118dff"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
