class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.85/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "8b9746afe09899183fc226d32bd2bc1c3a7283405bc9cae24065a370f13f7182"
  version "0.5.85"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.85/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8b9746afe09899183fc226d32bd2bc1c3a7283405bc9cae24065a370f13f7182"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
