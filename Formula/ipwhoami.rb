class Ipwhoami < Formula
  desc "IP geolocation lookup from your terminal"
  homepage "https://github.com/vineethkrishnan/ipwhoami"
  url "https://github.com/vineethkrishnan/ipwhoami/archive/refs/tags/ipwhoami-v1.1.1.tar.gz"
  sha256 "58238ca31d60068ef1e4d9d3b49cb476f64023d6f4957c586a595180b9037a9f"
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
