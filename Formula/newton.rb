class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.81/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "0f498357482eb4a978295240e2303eb65f41d2cf9d1ab7bcc7acc17082f6974f"
  version "0.5.81"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.81/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0f498357482eb4a978295240e2303eb65f41d2cf9d1ab7bcc7acc17082f6974f"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
