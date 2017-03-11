class Ranch < Formula
  desc "Ranch Platform CLI"
  homepage "https://github.com/goodeggs/platform/tree/master/cmd/ranch"
  version "7.1.1"
  url "https://github.com/goodeggs/platform/releases/download/v#{version}/ranch_#{version}_darwin_amd64.zip"
  sha256 "35a9152760ff1e25663f8e9fa526905abe8f7bd3f42ca674f8f7ee3bd0afb32c"

  def install
    bin.install "ranch"
  end

  test do
    output = shell_output(bin/"ranch version")
    assert_match version.to_s, output
  end
end
