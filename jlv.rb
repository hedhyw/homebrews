# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jlv < Formula
  desc "JSON Log Viewer tool."
  homepage "https://github.com/hedhyw/homebrews"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hedhyw/json-log-viewer/releases/download/v0.1.8/jlv_darwin_arm64.tar.gz"
      sha256 "a7655bd39a3f1b0460bf98320628edcb551bcde8e2ba05d5ffc2818162305f8b"

      def install
        bin.install "jlv"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hedhyw/json-log-viewer/releases/download/v0.1.8/jlv_darwin_amd64.tar.gz"
      sha256 "584d12085aa3bc19fb2791082150cd1f3fc6166fedbb65bb18925c14a069b1f6"

      def install
        bin.install "jlv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hedhyw/json-log-viewer/releases/download/v0.1.8/jlv_linux_amd64.tar.gz"
      sha256 "85fa6b67e492c3d70797b0f4331091564d501964a7ed39de9a479bac490e5ebb"

      def install
        bin.install "jlv"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/hedhyw/json-log-viewer/releases/download/v0.1.8/jlv_linux_arm.tar.gz"
      sha256 "bd9b89622c595793f01860f5c2b848ce92fbf1ea40477c13c6cf7859f1f14710"

      def install
        bin.install "jlv"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hedhyw/json-log-viewer/releases/download/v0.1.8/jlv_linux_arm64.tar.gz"
      sha256 "ab8d1c0488adb3e0186cd06c1094da22eec0b86bb04fc6d0749c2393cb3525b4"

      def install
        bin.install "jlv"
      end
    end
  end

  test do
    system "#{bin}/jlv", "-help"
  end
end
