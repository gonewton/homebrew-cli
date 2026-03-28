class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.72/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "01fe53fcb3989afd474e8ba4a181bb93687dfa3b4098ca3c100ba7ac003814f2"
  version "0.5.72"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.72/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "01fe53fcb3989afd474e8ba4a181bb93687dfa3b4098ca3c100ba7ac003814f2"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
