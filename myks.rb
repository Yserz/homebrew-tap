class Myks < Formula
  desc "Maintain configuration of many applications for multiple Kubernetes clusters"
  homepage "https://github.com/mykso/myks"
  url "https://github.com/mykso/myks/releases/download/v2.0.0/myks_2.0.0_darwin_arm64.tar.gz"
  version_scheme 1
  sha256 "f612d1341f2c7bf89727fa9f5fcf21ada926063988261c90c38f86fb2ce37daf"
  license "MIT"

  def install
    bin.install "myks"
  end

  test do
    system "#{bin}/myks", "--version"
  end
end
