class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.72/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "53b3d7b79df3b7e1d5ce6be3a0c479284f43f30a8fb7ce5bc78e9fb18c62754e"
  version "0.5.72"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.72/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "53b3d7b79df3b7e1d5ce6be3a0c479284f43f30a8fb7ce5bc78e9fb18c62754e"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
