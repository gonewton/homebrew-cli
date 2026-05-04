class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.85/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "744cfdafb99f4fb1427561e3cc94fd6b285f805b4f71c0e5c23fe902943010d7"
  version "0.5.85"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.85/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "744cfdafb99f4fb1427561e3cc94fd6b285f805b4f71c0e5c23fe902943010d7"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
