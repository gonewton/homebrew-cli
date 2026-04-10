class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.77/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "d3a36277f3d45f3be9745c62bce0d8ceddfb56bc87e7c27fd28579afe5b5ab89"
  version "0.5.77"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.77/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d3a36277f3d45f3be9745c62bce0d8ceddfb56bc87e7c27fd28579afe5b5ab89"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
