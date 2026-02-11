class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.18/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "42a5cbc943c0b9fc4394168a27301e2551670ec77151344d8c2137833be1195a"
  version "0.5.18"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.18/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "42a5cbc943c0b9fc4394168a27301e2551670ec77151344d8c2137833be1195a"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
