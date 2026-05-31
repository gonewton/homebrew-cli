class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.111/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "0501708aad98d7c26a381ac12ae382a08b004142a00c1946ab27a1d2490c20a5"
  version "0.5.111"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.111/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0501708aad98d7c26a381ac12ae382a08b004142a00c1946ab27a1d2490c20a5"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
