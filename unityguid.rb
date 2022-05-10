# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Unityguid < Formula
  desc "List up unity guids, detect conflict and replace guids."
  homepage "https://github.com/mattak/unityguid"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mattak/unityguid/releases/download/v1.0.3/unityguid_darwin_x86_64.tar.gz"
      sha256 "0f092aa010bdb43807bf82f143593e1ec734dd2aab995345f0bb89d060271bc7"

      def install
        system "go", "build"
        bin.install "unityguid"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mattak/unityguid/releases/download/v1.0.3/unityguid_darwin_arm64.tar.gz"
      sha256 "d79aa8eff2b0b82c196b73cdefb8b053a823babd3cc663590b0c9d46de7c069f"

      def install
        system "go", "build"
        bin.install "unityguid"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mattak/unityguid/releases/download/v1.0.3/unityguid_linux_x86_64.tar.gz"
      sha256 "c89702d4943deacb39123bd7e7531d01c818f5bf617763670d674be6900842aa"

      def install
        system "go", "build"
        bin.install "unityguid"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mattak/unityguid/releases/download/v1.0.3/unityguid_linux_arm64.tar.gz"
      sha256 "361230b8b2f3e8b590dffff577e136698e0c687fc1295c73f747d4a0d92c97cd"

      def install
        system "go", "build"
        bin.install "unityguid"
      end
    end
  end
end
