class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.124/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "1afa1d5b73f9d1e4b3a022909ed993afa8c8572d5bfd144a880a2f858997a002"
  version "0.5.124"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.124/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1afa1d5b73f9d1e4b3a022909ed993afa8c8572d5bfd144a880a2f858997a002"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
