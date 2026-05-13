class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.94/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "ed5ee76cec21bb8e906d90c29c90c4b317e22229c4d43cf16d576b301876a3d8"
  version "0.5.94"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.94/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ed5ee76cec21bb8e906d90c29c90c4b317e22229c4d43cf16d576b301876a3d8"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
