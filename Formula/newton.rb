class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.80/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "68c0ea00efc42875ea7583d1463f41642bcb7ed3a4d956e774b6cdda46ae502f"
  version "0.5.80"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.80/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "68c0ea00efc42875ea7583d1463f41642bcb7ed3a4d956e774b6cdda46ae502f"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
