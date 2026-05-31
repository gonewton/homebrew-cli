class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.110/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "c8d6e9ce238eb1976cc99808b579d1bf9a33eeda4dd5b187677150ff541113cb"
  version "0.5.110"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.110/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c8d6e9ce238eb1976cc99808b579d1bf9a33eeda4dd5b187677150ff541113cb"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
