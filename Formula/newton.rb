class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.99/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "c5f6f513cfd388a67d498992770c724b60650c8a9ac8e2e5ec706a6df359177a"
  version "0.5.99"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.99/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c5f6f513cfd388a67d498992770c724b60650c8a9ac8e2e5ec706a6df359177a"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
