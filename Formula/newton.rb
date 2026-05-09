class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.90/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "63484a317e380ce3a78da8c63e71857ebb5240051c839c725eea2c5b9425a87f"
  version "0.5.90"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.90/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "63484a317e380ce3a78da8c63e71857ebb5240051c839c725eea2c5b9425a87f"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
