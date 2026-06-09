class Newton < Formula
  desc "Newton CLI tool"
  homepage "https://github.com/gonewton/newton"
  url "https://github.com/gonewton/newton/releases/download/v0.5.116/newton-x86_64-unknown-linux-musl.tar.gz"
  sha256 "d0e744fd5ccb9cb68d7416203f5e29c52b5cc2de43dff87f62ec0256d3327acf"
  version "0.5.116"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gonewton/newton/releases/download/v0.5.116/newton-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d0e744fd5ccb9cb68d7416203f5e29c52b5cc2de43dff87f62ec0256d3327acf"
    end
  end

  def install
    bin.install "newton"
  end

  test do
    system "#{bin}/newton", "--version"
  end
end
