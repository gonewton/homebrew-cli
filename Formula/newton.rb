class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.64/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "b412ce551d0943fdc575b377ee8a049e3080fce6a5b99acb670b0c732c7132f6"
  version "0.5.64"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.64/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b412ce551d0943fdc575b377ee8a049e3080fce6a5b99acb670b0c732c7132f6"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
