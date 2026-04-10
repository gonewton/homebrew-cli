class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.74/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "8da003a3fdef8699bcec2ee0fc5741f1dd7f63f1a281699e19043d28896d4ba5"
  version "0.5.74"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.74/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8da003a3fdef8699bcec2ee0fc5741f1dd7f63f1a281699e19043d28896d4ba5"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
