class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.94/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "54328317f545ff21a73df09be4fe6723570bd0439f3fb97adaa9026ac29eb0a7"
  version "0.5.94"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.94/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "54328317f545ff21a73df09be4fe6723570bd0439f3fb97adaa9026ac29eb0a7"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
