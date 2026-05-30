class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.109/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "98e3eb84127cc77849c6a2ac734bed6358bc914b827ef14163c7c2d41ddce71f"
  version "0.5.109"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.109/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "98e3eb84127cc77849c6a2ac734bed6358bc914b827ef14163c7c2d41ddce71f"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
