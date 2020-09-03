class Unityguid < Formula
  desc "List up unity guids, detect confliction and replace"
  homepage "https://github.com/mattak/unityguid"
  url "https://github.com/mattak/unityguid/archive/1.0.1.tar.gz"
  sha256 "3c0d8a1bae611154174f2e716e6311b695606d26108f4fc4231a62b315df9d3a"
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
