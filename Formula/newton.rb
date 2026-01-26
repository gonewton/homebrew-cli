class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.3.6/newton-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "placeholder_sha256_gnu"
  version "0.3.6"

  on_linux do
    if Hardware::CPU.intel?
      if ENV["HOMEBREW_GLIBC_VERSION"] && Version.new(ENV["HOMEBREW_GLIBC_VERSION"]) < Version.new("2.38")
        url "https://github.com/gonewton/newton/releases/download/v0.3.6/newton-x86_64-unknown-linux-musl.tar.gz"
        sha256 "placeholder_sha256_musl"
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