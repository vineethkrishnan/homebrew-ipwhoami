class Ipwho < Formula
  desc "IP geolocation lookup from your terminal"
  homepage "https://github.com/vineethkrishnan/ipwho"
  url "https://github.com/vineethkrishnan/ipwho/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on "node" => ">=18"

  def install
    libexec.install "bin", "src", "package.json"
    bin.install_symlink libexec/"bin/ipwho.js" => "ipwho"
  end

  test do
    assert_match "ipwho", shell_output("#{bin}/ipwho --version")
  end
end
