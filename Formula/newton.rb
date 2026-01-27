class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.3.9/newton-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "a99a52fad2da49d867b1b1f8947dda6f48eb658c861d04abbf898187a83d5c04"
  version "0.3.9"

  on_linux do
    if Hardware::CPU.intel?
      if ENV["HOMEBREW_GLIBC_VERSION"] && Version.new(ENV["HOMEBREW_GLIBC_VERSION"]) < Version.new("2.38")
        url "https://github.com/gonewton/newton/releases/download/v0.3.9/newton-x86_64-unknown-linux-musl.tar.gz"
        sha256 "c999293fb1825ff7c6ef16186b9d35d34e31714363c65d3292a2635c45674e0c"
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
