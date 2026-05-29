class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.107/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "31668da3471fc3939c9377a367013ce7127577a04c5e58b4990f288c81f8eb68"
  version "0.5.107"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.107/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "31668da3471fc3939c9377a367013ce7127577a04c5e58b4990f288c81f8eb68"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
