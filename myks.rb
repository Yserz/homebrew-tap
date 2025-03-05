class Myks < Formula
  desc "Maintain configuration of many applications for multiple Kubernetes clusters"
  homepage "https://github.com/mykso/myks"
  url "https://github.com/mykso/myks.git",
      tag:      "v4.5.1",
      revision: "cec86946d863fae8491a6cbcb66b183ee18dc6b4"
  license "MIT"
  version_scheme 1

  depends_on "go" => :build
  depends_on "git"
  depends_on "helm"
  depends_on "vendir"
  depends_on "ytt"

  def install
    system "go", "build", "-o", "myks", "-ldflags=-X 'main.version=#{version}'"
    bin.install "myks"
  end

  test do
    system "#{bin}/myks", "--version"
  end
end
