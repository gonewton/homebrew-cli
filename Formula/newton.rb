class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.124/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "123b0437fb2fe8a405ce47c835346c7a4a96c3fbcc70cd45a7756eb0d4905e14"
  version "0.5.124"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.124/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "123b0437fb2fe8a405ce47c835346c7a4a96c3fbcc70cd45a7756eb0d4905e14"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
