class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.78/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "e4404042271f55613313ca327a35be518efeb097f12887c0b126ae6089c690c2"
  version "0.5.78"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.78/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e4404042271f55613313ca327a35be518efeb097f12887c0b126ae6089c690c2"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
