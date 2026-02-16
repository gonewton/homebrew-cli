class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.26/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "d2fe5019d21728f0a7fe3e842798c6ce53905562111e8bc393404b37200dc160"
  version "0.5.26"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.26/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d2fe5019d21728f0a7fe3e842798c6ce53905562111e8bc393404b37200dc160"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
