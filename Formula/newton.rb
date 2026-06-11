class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.120/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "e0ad10bbf46571dad5bcdd0af7e8dace7de7ca4c3d4e07fde1176777e8f5627c"
  version "0.5.120"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.120/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e0ad10bbf46571dad5bcdd0af7e8dace7de7ca4c3d4e07fde1176777e8f5627c"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
