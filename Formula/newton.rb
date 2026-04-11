class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.77/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "8f5a2941b15f06d81ff8d33250d732bf46184d7bdafd906ce3d8db891a5131d8"
  version "0.5.77"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.77/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8f5a2941b15f06d81ff8d33250d732bf46184d7bdafd906ce3d8db891a5131d8"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
