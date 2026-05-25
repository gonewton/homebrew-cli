class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.104/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "02f33bf55fccef05273fcec50442730a6067542b95b9c96185e214c8f6da4a23"
  version "0.5.104"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.104/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "02f33bf55fccef05273fcec50442730a6067542b95b9c96185e214c8f6da4a23"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
