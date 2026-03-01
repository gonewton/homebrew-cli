class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.48/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "e62eab9993907f4ae13a6cbbc2dca3fdd16c0e7918bef6b4bed3bee7aa09360c"
  version "0.5.48"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.48/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e62eab9993907f4ae13a6cbbc2dca3fdd16c0e7918bef6b4bed3bee7aa09360c"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
