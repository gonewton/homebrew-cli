class Constraint < Formula
  desc "A CLI tool for managing project constraints with RFC 2119 compliance"
  homepage "https://github.com/gonewton/constraints"
  url "https://github.com/gonewton/constraints/releases/download/v0.1.0/constraint-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "placeholder_sha256_gnu"
  version "0.1.0"

  on_linux do
    if Hardware::CPU.intel?
      if ENV["HOMEBREW_GLIBC_VERSION"] && Version.new(ENV["HOMEBREW_GLIBC_VERSION"]) < Version.new("2.38")
        url "https://github.com/gonewton/constraints/releases/download/v0.1.0/constraint-x86_64-unknown-linux-musl.tar.gz"
        sha256 "placeholder_sha256_musl"
      end
    end
  end

  def install
    bin.install "constraint"
  end

  test do
    system "#{bin}/constraint", "--version"
  end
end