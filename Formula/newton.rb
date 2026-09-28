class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.133/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "7b944e2e76e3d747622b177f7fbc182b0c501059a38a8f4f26efeefaf40aea06"
  version "0.5.133"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.133/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7b944e2e76e3d747622b177f7fbc182b0c501059a38a8f4f26efeefaf40aea06"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
