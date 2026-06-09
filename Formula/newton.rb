class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.118/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "76aa1146ee90dd8b95d2d5bc0730cbe816054267db051e57a1ab3ca0570725be"
  version "0.5.118"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.118/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "76aa1146ee90dd8b95d2d5bc0730cbe816054267db051e57a1ab3ca0570725be"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
