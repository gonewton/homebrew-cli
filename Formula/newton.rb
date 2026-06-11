class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.121/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "8242213c1b9977e3538df41f70c01e56c5508bb1e7051379c9628530ccbdcf22"
  version "0.5.121"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.121/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8242213c1b9977e3538df41f70c01e56c5508bb1e7051379c9628530ccbdcf22"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
