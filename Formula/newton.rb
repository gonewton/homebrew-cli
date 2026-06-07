class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.114/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "0c474dcfc1f46873d41ff1169c7d08f26f2811cee217ab7c7397ca2ee4dde677"
  version "0.5.114"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.114/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0c474dcfc1f46873d41ff1169c7d08f26f2811cee217ab7c7397ca2ee4dde677"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
