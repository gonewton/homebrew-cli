class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.117/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "a27b98831561fd73337dce389cb31fa44ec39acb7a30dccd439f039c9efc559c"
  version "0.5.117"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.117/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a27b98831561fd73337dce389cb31fa44ec39acb7a30dccd439f039c9efc559c"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
