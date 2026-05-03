class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.84/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "c2ca64d16fc5fe328dfd02312584b305e5d632f9558148d641dcccbc6e0d40fc"
  version "0.5.84"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.84/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c2ca64d16fc5fe328dfd02312584b305e5d632f9558148d641dcccbc6e0d40fc"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
