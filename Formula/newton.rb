class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.120/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "85302229fd4ab4a3774b302c03b86a73833837ab2f65788e3dfa5bcb253ebe8a"
  version "0.5.120"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.120/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "85302229fd4ab4a3774b302c03b86a73833837ab2f65788e3dfa5bcb253ebe8a"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
