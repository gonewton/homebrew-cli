class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.102/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "f3e7f32542dbd3bae6f9925097bcd64f27fcbacc499e71118c6f4281b3f486ed"
  version "0.5.102"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.102/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f3e7f32542dbd3bae6f9925097bcd64f27fcbacc499e71118c6f4281b3f486ed"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
