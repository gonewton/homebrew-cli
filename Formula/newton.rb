class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.129/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "b0220e69fd43b51874e24f191bdacbb461f56eceb9ff73254973505ee0f7fb5a"
  version "0.5.129"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.129/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b0220e69fd43b51874e24f191bdacbb461f56eceb9ff73254973505ee0f7fb5a"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
