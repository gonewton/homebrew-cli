class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.84/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "7f98897fabd9302e13513d45eff0a8837952f2f240a8a74378c3c6b6bb20b8b8"
  version "0.5.84"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.84/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7f98897fabd9302e13513d45eff0a8837952f2f240a8a74378c3c6b6bb20b8b8"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
