class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.122/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "a00a45a2102d9eb1f6496af854d4cc312605c3cb14f93e08dac8e3f2558a7fb3"
  version "0.5.122"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.122/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a00a45a2102d9eb1f6496af854d4cc312605c3cb14f93e08dac8e3f2558a7fb3"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
