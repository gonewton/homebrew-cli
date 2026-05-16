class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.98/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "b98819703b606ee79000874391fb1cc365d986b874627994c7e5fb0381644c47"
  version "0.5.98"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.98/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b98819703b606ee79000874391fb1cc365d986b874627994c7e5fb0381644c47"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
