class Unityguid < Formula
  desc "List up unity guids, detect confliction and replace"
  homepage "https://github.com/mattak/unityguid"
  url "https://github.com/mattak/unityguid/archive/1.0.0.tar.gz"
  sha256 "3d427c4831efa26c1124f5592fe9b2818ff472646e79eb2e8da39b2e3def56a0"
  license "MIT"

  # depends_on "cmake" => :build
  depends_on "go" => :build
  depends_on "make" => :build
  depends_on "dep" => :build

  def install
    print buildpath
    ENV["GOPATH"] = buildpath
    unityguid_path = buildpath/"src/github.com/mattak/unityguid/"
    unityguid_path.install buildpath.children

    cd unityguid_path do
      system "dep", "ensure", "-vendor-only"
      system "go", "build"
      bin.install "unityguid"
    end
  end

  test do
    system "false"
  end
end
