class Newton < Formula
  desc "Rust implementation of Newton Loop optimization framework with 100% Python compatibility"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.1.0/newton-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "placeholder_sha256_gnu"
  version "0.1.0"

  on_linux do
    if Hardware::CPU.intel?
      if ENV["HOMEBREW_GLIBC_VERSION"] && Version.new(ENV["HOMEBREW_GLIBC_VERSION"]) < Version.new("2.38")
        url "https://github.com/gonewton/newton/releases/download/v0.1.0/newton-x86_64-unknown-linux-musl.tar.gz"
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