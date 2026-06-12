class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.122/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "be2f00dd75c410aee5a7cbf60c80e5cc709c0dfa2a6f1c870638e42d78f65733"
  version "0.5.122"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.122/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "be2f00dd75c410aee5a7cbf60c80e5cc709c0dfa2a6f1c870638e42d78f65733"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
