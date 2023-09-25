class Myks < Formula
  desc "Maintain configuration of many applications for multiple Kubernetes clusters"
  homepage "https://github.com/mykso/myks"
  url "https://github.com/mykso/myks.git",
      tag:      "v2.0.1",
      revision: "cb9a13272c552d66365315bf6fbd2dd56c8b1745"
  license "MIT"
  version_scheme 1

  # if OS.mac?
  #   if Hardware::CPU.arm?
  #     url "https://github.com/carvel-dev/ytt/releases/download/v0.46.0/ytt-darwin-arm64"
  #     sha256 "0c025f1210875f185a867e6cb3fd4770627f13ce64d69b6092de713464395ddb"
  #   else
  #     url "https://github.com/carvel-dev/ytt/releases/download/v0.46.0/ytt-darwin-amd64"
  #     sha256 "a2ca42f8178ba2849076b580177c5c12769e17f01a61ab50b106367728004692"
  #   end
  # elsif OS.linux?
  #   if Hardware::CPU.arm?
  #     url "https://github.com/carvel-dev/ytt/releases/download/v0.46.0/ytt-linux-arm64"
  #     sha256 "9552c863452622386b9e9fcab0eb0533b6e8c77bc3f5c753967d40232b2a1721"
  #   else
  #     url "https://github.com/carvel-dev/ytt/releases/download/v0.46.0/ytt-linux-amd64"
  #     sha256 "348cb34965b64c07fd5118e69efd9a4fae7e22f57db4e91e2d9903c1ad19f041"
  #   end
  # end

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
