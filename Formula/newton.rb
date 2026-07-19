class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.124/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "f9463a951028fdab1a2b86cc6f5acd30f45fc4734ee4cd47aec542f08c362651"
  version "0.5.124"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.124/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f9463a951028fdab1a2b86cc6f5acd30f45fc4734ee4cd47aec542f08c362651"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
