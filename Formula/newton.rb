class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.107/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "4afdbb15343a4c2433e971cf1e022896c987a4b0e2b06342414a7588076f5033"
  version "0.5.107"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.107/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4afdbb15343a4c2433e971cf1e022896c987a4b0e2b06342414a7588076f5033"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
