class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.63/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "8633e1934097c01148301335e83d863cf850a612d5d665c23618a983c132d162"
  version "0.5.63"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.63/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8633e1934097c01148301335e83d863cf850a612d5d665c23618a983c132d162"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
