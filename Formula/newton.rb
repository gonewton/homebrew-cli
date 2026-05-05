class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.86/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "194cc5ea6bc269dc50bc198c475e2c4c501173bb6ec58cac3ba1fb9163368d60"
  version "0.5.86"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.86/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "194cc5ea6bc269dc50bc198c475e2c4c501173bb6ec58cac3ba1fb9163368d60"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
