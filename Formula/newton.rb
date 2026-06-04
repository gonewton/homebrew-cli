class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.113/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "5c5edffdcbeb7649d4a6576189501cecb46ecaf87c03990f1c6b9591d3b3347a"
  version "0.5.113"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.113/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5c5edffdcbeb7649d4a6576189501cecb46ecaf87c03990f1c6b9591d3b3347a"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
