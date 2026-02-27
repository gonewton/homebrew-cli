class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.39/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "ede6d5fb2758f0fc7dfdf2ef3a4fda4740af9fbfebe357e8af406cd469dc7f71"
  version "0.5.39"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.39/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ede6d5fb2758f0fc7dfdf2ef3a4fda4740af9fbfebe357e8af406cd469dc7f71"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
