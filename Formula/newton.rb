class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.99/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "75c92ad59a94ebaa0c4bbe7600662524714e24d798952c690302f59cb2a90f39"
  version "0.5.99"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.99/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "75c92ad59a94ebaa0c4bbe7600662524714e24d798952c690302f59cb2a90f39"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
