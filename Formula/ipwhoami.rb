class Ipwho < Formula
  desc "IP geolocation lookup from your terminal"
  homepage "https://github.com/vineethkrishnan/ipwhoami"
  url "https://github.com/vineethkrishnan/ipwhoami/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "PLACEHOLDER"
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
