class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.13/newton-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "fd40cf9cb24f1a443cdc3e3bf821e7431cb33b3b8b2ab0a32418ac61c8876585"
  version "0.5.13"

  on_linux do
    if Hardware::CPU.intel?
      if ENV["HOMEBREW_GLIBC_VERSION"] && Version.new(ENV["HOMEBREW_GLIBC_VERSION"]) < Version.new("2.38")
        url "https://github.com/gonewton/newton/releases/download/v0.5.13/newton-x86_64-unknown-linux-musl.tar.gz"
        sha256 "f86f931c48f4bfa4ff6823246a7c1213188401f6cdaa1172a4b2eb942a486c32"
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
