class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.73/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "71364d436030c567fbcfd53405b5fbc0b304b20d47409eaebea5c1fcda714a88"
  version "0.5.73"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.73/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "71364d436030c567fbcfd53405b5fbc0b304b20d47409eaebea5c1fcda714a88"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
