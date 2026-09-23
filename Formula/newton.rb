class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.130/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "3d30382321c7522488a99644e0b659279efaed8dc163bea62b931cfd75fd6fff"
  version "0.5.130"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.130/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3d30382321c7522488a99644e0b659279efaed8dc163bea62b931cfd75fd6fff"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
