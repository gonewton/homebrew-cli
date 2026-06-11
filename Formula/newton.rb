class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.119/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "28e6af7e4c60c68ea80bd1ee5a07e6c8893985fafb611667753ba7fc3483b95f"
  version "0.5.119"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.119/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "28e6af7e4c60c68ea80bd1ee5a07e6c8893985fafb611667753ba7fc3483b95f"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
