class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.0/newton-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "16802bdbd659226d2774be5548363567dedfdb46a7aed23cf581319500632ac9"
  version "0.5.0"

  on_linux do
    if Hardware::CPU.intel?
      if ENV["HOMEBREW_GLIBC_VERSION"] && Version.new(ENV["HOMEBREW_GLIBC_VERSION"]) < Version.new("2.38")
        url "https://github.com/gonewton/newton/releases/download/v0.5.0/newton-x86_64-unknown-linux-musl.tar.gz"
        sha256 "e7063ef951a6b66b011188b1f35f7a09af914db65c27a98829e8daa02418838b"
      end
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
