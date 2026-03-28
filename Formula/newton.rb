class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.70/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "2a2990e0896b281b0240f163b988d57230fe346bc989e2c79c704e96f6472bf1"
  version "0.5.70"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.70/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2a2990e0896b281b0240f163b988d57230fe346bc989e2c79c704e96f6472bf1"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
