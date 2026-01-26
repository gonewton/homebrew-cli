class Constraint < Formula
  desc "Constraint Management CLI tool"
  homepage "https://github.com/gonewton/constraint"
  url "https://github.com/gonewton/constraint/releases/download/v0.1.1/constraint-v0.1.1-linux-x86_64"
  sha256 "237b0e1add055b46b27f2b49130e4f7d6848ad8dc88af32ed9f8a1f41bb8d35a"
  version "0.1.1"

  def install
    bin.install "constraint-v0.1.1-linux-x86_64" => "constraint"
  end

  test do
    system "#{bin}/constraint", "--version"
  end
end
