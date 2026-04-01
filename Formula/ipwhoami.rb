class Ipwhoami < Formula
  desc "IP geolocation lookup from your terminal"
  homepage "https://github.com/vineethkrishnan/ipwhoami"
  url "https://github.com/vineethkrishnan/ipwhoami/archive/refs/tags/ipwhoami-v1.2.1.tar.gz"
  sha256 "8a85739e0a8ac46a6195241d458a4108a9a2c5f042cde90846719161021852ab"
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
