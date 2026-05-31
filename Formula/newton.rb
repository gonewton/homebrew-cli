class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.110/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "b3d0b70d57d1e1c1904b03718f1f10a7c25f5d3884e61736283b81b797ed70f1"
  version "0.5.110"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.110/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b3d0b70d57d1e1c1904b03718f1f10a7c25f5d3884e61736283b81b797ed70f1"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
