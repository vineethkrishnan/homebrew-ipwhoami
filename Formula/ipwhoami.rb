class Ipwhoami < Formula
  desc "IP geolocation lookup from your terminal"
  homepage "https://github.com/vineethkrishnan/ipwhoami"
  url "https://github.com/vineethkrishnan/ipwhoami/archive/refs/tags/ipwhoami-v1.1.0.tar.gz"
  sha256 "ad2a09c735fd014baf09db0cd08cc61a4cd19a197b76bd3173f862246a7b4da3"
  license "MIT"

  depends_on "node" => ">=18"

  def install
    libexec.install "bin", "src", "package.json"
    bin.install_symlink libexec/"bin/ipwhoami.js" => "ipwhoami"
  end

  test do
    assert_match "ipwhoami", shell_output("#{bin}/ipwhoami --version")
  end
end
