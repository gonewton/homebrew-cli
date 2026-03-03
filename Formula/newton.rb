class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.55/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "e181396662067584ba059f2e85fda0064dad719a999afe790dd707649fdc5634"
  version "0.5.55"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.55/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e181396662067584ba059f2e85fda0064dad719a999afe790dd707649fdc5634"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
