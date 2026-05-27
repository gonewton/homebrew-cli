class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.106/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "f4ce89ac122392aca6bbf31f532c3d410dcf018865776380ca91677d7e2512b2"
  version "0.5.106"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.106/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f4ce89ac122392aca6bbf31f532c3d410dcf018865776380ca91677d7e2512b2"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
