class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.104/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "efc3e99eed43f93cfe747f8b2ea667bd45eca2dcb3615199cfcbf09698906d9e"
  version "0.5.104"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.104/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "efc3e99eed43f93cfe747f8b2ea667bd45eca2dcb3615199cfcbf09698906d9e"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
