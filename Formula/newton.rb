class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.3.14/newton-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "be3551ab4b80f1f1bf697e5e37157e2c95fb8e3d80ce05c47db3c5a8b0b533fc"
  version "0.3.14"

  on_linux do
    if Hardware::CPU.intel?
      if ENV["HOMEBREW_GLIBC_VERSION"] && Version.new(ENV["HOMEBREW_GLIBC_VERSION"]) < Version.new("2.38")
        url "https://github.com/gonewton/newton/releases/download/v0.3.14/newton-x86_64-unknown-linux-musl.tar.gz"
        sha256 "8dc632836d31e70ee5faf694191364557479d30f5a7ac75f478c8559c8341e0c"
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
