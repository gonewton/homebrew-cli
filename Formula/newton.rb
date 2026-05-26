class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.104/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "bd948c4e4562f05ef82e7b3e83b9aa7653b20aa224b15f42794d7fa35287d7c3"
  version "0.5.104"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.104/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bd948c4e4562f05ef82e7b3e83b9aa7653b20aa224b15f42794d7fa35287d7c3"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
