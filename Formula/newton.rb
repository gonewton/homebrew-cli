class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.3.6/newton-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "16d4350358695d2786ffa608387e7ca77f8dd9c6de9a8e21ccba29c70bc78ba0"
  version "0.3.6"

  on_linux do
    if Hardware::CPU.intel?
      if ENV["HOMEBREW_GLIBC_VERSION"] && Version.new(ENV["HOMEBREW_GLIBC_VERSION"]) < Version.new("2.38")
        url "https://github.com/gonewton/newton/releases/download/v0.3.6/newton-x86_64-unknown-linux-musl.tar.gz"
        sha256 "b575ab274e59e9f1fc3defb053aa2d7a16c83a3ad348c15f07422cf90797f58b"
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
