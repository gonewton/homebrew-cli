class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.4.2/newton-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "ad59c40491c2e6028f8b85895556a50f031868100b8b1e2b6603bd1efc9bc413"
  version "0.4.2"

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
