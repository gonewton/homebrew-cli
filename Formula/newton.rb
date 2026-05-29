class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.108/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "49f0767de09a31fd3e401498d1a1ce349d5f8960d90f6ab3a9151e227740ab63"
  version "0.5.108"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.108/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "49f0767de09a31fd3e401498d1a1ce349d5f8960d90f6ab3a9151e227740ab63"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
