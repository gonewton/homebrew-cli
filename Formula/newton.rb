class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.75/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "5d6901a421f4b2615eb55d825fb211e797b56a62d0f07af02c7b2fddacf1bfba"
  version "0.5.75"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.75/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5d6901a421f4b2615eb55d825fb211e797b56a62d0f07af02c7b2fddacf1bfba"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
