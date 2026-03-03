class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.59/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "5193f638a1c7499f42173fed5496316e0a217755b6fb8e317e937db6f7d88335"
  version "0.5.59"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.59/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5193f638a1c7499f42173fed5496316e0a217755b6fb8e317e937db6f7d88335"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
