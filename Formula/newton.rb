class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.119/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "a5ca1ec37e2e3812bb79d6fe32ba908ea366051229ee7e00a0194c35ad1f7189"
  version "0.5.119"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.119/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a5ca1ec37e2e3812bb79d6fe32ba908ea366051229ee7e00a0194c35ad1f7189"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
