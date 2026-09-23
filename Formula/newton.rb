class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.132/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "1829e94510efe2d269c5154750564e19ac801d2193478790150058daaee422d5"
  version "0.5.132"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.132/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1829e94510efe2d269c5154750564e19ac801d2193478790150058daaee422d5"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
