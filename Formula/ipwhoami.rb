class Ipwhoami < Formula
  desc "IP geolocation lookup from your terminal"
  homepage "https://github.com/vineethkrishnan/ipwhoami"
  url "https://github.com/vineethkrishnan/ipwhoami/archive/refs/tags/ipwhoami-v1.2.0.tar.gz"
  sha256 "ffc224a8aa5453fff44a21ccca1b50afcf96c4eabc2ab502d55ea0c9270f4704"
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
