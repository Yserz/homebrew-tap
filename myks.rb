class Myks < Formula
  desc "Maintain configuration of many applications for multiple Kubernetes clusters"
  homepage "https://github.com/mykso/myks"
  url "https://github.com/mykso/myks/releases/download/v2.0.1/myks_2.0.1_darwin_amd64.tar.gz"
  version "2.0.1"
  sha256 "1522c570becb471e05854aee6cdf04a1a19e34026331eb77aec912c4c680152d"
  license "MIT"
  version_scheme 1

  def install
    bin.install "myks"
  end

  test do
    system "#{bin}/myks", "--version"
  end
end
