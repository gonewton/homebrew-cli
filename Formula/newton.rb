class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.53/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "eee7d8dff1fa4975aab2fdd32d4b2c4562f50b78453124a5616b451c5e64ba16"
  version "0.5.53"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.53/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eee7d8dff1fa4975aab2fdd32d4b2c4562f50b78453124a5616b451c5e64ba16"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
