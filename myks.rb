class Myks < Formula
  desc "Maintain configuration of many applications for multiple Kubernetes clusters"
  homepage "https://github.com/mykso/myks"
  url "https://github.com/mykso/myks/releases/download/v2.0.1/myks_2.0.1_darwin_arm64.tar.gz"
  sha256 "a8b3f16a57016b85bd80c2667c8f33d5f96587b36ac106bbbe04de036b6ff8ef"
  license "MIT"

  def install
    bin.install "myks"
  end

  test do
    system "#{bin}/myks", "--version"
  end
end
