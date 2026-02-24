class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.34/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "cddd23fe59c4cb9ddbe2ccf05bbb3f2a2eaf8fae797f91a81c4d4c83fbf9b684"
  version "0.5.34"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.34/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cddd23fe59c4cb9ddbe2ccf05bbb3f2a2eaf8fae797f91a81c4d4c83fbf9b684"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
