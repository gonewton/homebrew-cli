class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.3.8/newton-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "2faaecb8626860ec6a5eabdaf6f6809c5c5dfc6b6f2e6afdd37692b53cb7316b"
  version "0.3.8"

  on_linux do
    if Hardware::CPU.intel?
      if ENV["HOMEBREW_GLIBC_VERSION"] && Version.new(ENV["HOMEBREW_GLIBC_VERSION"]) < Version.new("2.38")
        url "https://github.com/gonewton/newton/releases/download/v0.3.8/newton-x86_64-unknown-linux-musl.tar.gz"
        sha256 "9feb2d194a2eb6856ea9b4f9387fbf46ef3ebdcc012710462625fc9e6c500c31"
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
