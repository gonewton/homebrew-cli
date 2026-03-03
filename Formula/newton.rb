class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.57/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "7934b9493906f591f47c8e1e6202165e7543855024c93706179778b12ad00cd1"
  version "0.5.57"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.57/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7934b9493906f591f47c8e1e6202165e7543855024c93706179778b12ad00cd1"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
