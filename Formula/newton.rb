class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.95/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "72560887ef9cad7a9604df3cbbe01a1a780fddc117ed011c61638b8531dbae0d"
  version "0.5.95"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.95/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "72560887ef9cad7a9604df3cbbe01a1a780fddc117ed011c61638b8531dbae0d"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
