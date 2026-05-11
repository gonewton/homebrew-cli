class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.92/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "4c8a3629c958e209b19e3fce13f2284fe1a4891c349795ed60dd440c462022f8"
  version "0.5.92"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.92/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4c8a3629c958e209b19e3fce13f2284fe1a4891c349795ed60dd440c462022f8"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
