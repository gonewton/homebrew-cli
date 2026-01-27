class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.4.0/newton-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "ce7001ce85e3f39fda317d922e48b5a1412b1cfe9688790bb00580ca5536f0f9"
  version "0.4.0"

  on_linux do
    if Hardware::CPU.intel?
      if ENV["HOMEBREW_GLIBC_VERSION"] && Version.new(ENV["HOMEBREW_GLIBC_VERSION"]) < Version.new("2.38")
        url "https://github.com/gonewton/newton/releases/download/v0.4.0/newton-x86_64-unknown-linux-musl.tar.gz"
        sha256 "c00c4a509d5101bd227b4d1546e85fc726a506d405de78747a3602eb5318bc3d"
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
