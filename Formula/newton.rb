class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.123/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "ebf030036fbed9f85610cbf7ead9493dbb3a1ec05a1c659eccc22f3bde409539"
  version "0.5.123"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.123/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ebf030036fbed9f85610cbf7ead9493dbb3a1ec05a1c659eccc22f3bde409539"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
