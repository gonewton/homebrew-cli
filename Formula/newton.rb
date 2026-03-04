class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.62/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "1fb78cc433b6ebfa9b1ad2ad1cbb14c32de13616df379598d9c091854d1f38bd"
  version "0.5.62"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.62/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1fb78cc433b6ebfa9b1ad2ad1cbb14c32de13616df379598d9c091854d1f38bd"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
