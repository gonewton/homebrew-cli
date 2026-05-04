class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.85/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "0855d1afbaca293a91c24a8207b11785896c86ef5e2ae853584cdbdda7ebd8dc"
  version "0.5.85"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.85/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0855d1afbaca293a91c24a8207b11785896c86ef5e2ae853584cdbdda7ebd8dc"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
