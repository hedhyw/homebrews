# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jlv < Formula
  desc "JSON Log Viewer tool."
  homepage "https://github.com/hedhyw/homebrews"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/hedhyw/json-log-viewer/releases/download/v0.5.1/jlv_darwin_amd64.tar.gz"
      sha256 "44b39abc3377f8797fe2354c75ef967a7737009109d5f4726dd96816f61fd054"

      def install
        bin.install "jlv"
      end
    end
    on_arm do
      url "https://github.com/hedhyw/json-log-viewer/releases/download/v0.5.1/jlv_darwin_arm64.tar.gz"
      sha256 "110cf75c564b656825a69c2d9231817f11543ffe633c1e8accb22b296ff398d9"

      def install
        bin.install "jlv"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hedhyw/json-log-viewer/releases/download/v0.5.1/jlv_linux_amd64.tar.gz"
        sha256 "c7f886b02fe7613d5f4224a84eb49db62d465eca0158aa64619a0f2cf0392b50"

        def install
          bin.install "jlv"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/hedhyw/json-log-viewer/releases/download/v0.5.1/jlv_linux_arm.tar.gz"
        sha256 "624e330b4b2e3fac9c2d268c4948f5e593384b9cad82b7e25a372c4d6c97dc3b"

        def install
          bin.install "jlv"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hedhyw/json-log-viewer/releases/download/v0.5.1/jlv_linux_arm64.tar.gz"
        sha256 "ab7c9a8d60f8ee87240e1bd71c88e2a27a33927ddc674691697ea7678e609c0f"

        def install
          bin.install "jlv"
        end
      end
    end
  end

  test do
    system "#{bin}/jlv", "-help"
  end
end
