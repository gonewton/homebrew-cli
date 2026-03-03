class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.60/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "2af89b494d5b6094a2aa52b7e4de7e56fee008752c29970104575e9d33a729ff"
  version "0.5.60"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.60/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2af89b494d5b6094a2aa52b7e4de7e56fee008752c29970104575e9d33a729ff"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
