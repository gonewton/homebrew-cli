class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.111/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "cfebc1e94d830017a8a9ef7002febe158ed3ac92e69856516cbd99e036288f85"
  version "0.5.111"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.111/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cfebc1e94d830017a8a9ef7002febe158ed3ac92e69856516cbd99e036288f85"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
