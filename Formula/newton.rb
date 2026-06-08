class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.114/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "ed61fd8b5ef7377b411f06a90be0e10a863dfa803ec913fbffe32248364cd863"
  version "0.5.114"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.114/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ed61fd8b5ef7377b411f06a90be0e10a863dfa803ec913fbffe32248364cd863"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
