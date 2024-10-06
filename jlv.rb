# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jlv < Formula
  desc "JSON Log Viewer tool."
  homepage "https://github.com/hedhyw/homebrews"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/hedhyw/json-log-viewer/releases/download/v1.1.0/jlv_darwin_amd64.tar.gz"
      sha256 "5a4d127d7fce1dce1885622dfcd79ed917d9829a2fbdd666df6a9c0ca71f16fb"

      def install
        bin.install "jlv"
      end
    end
    on_arm do
      url "https://github.com/hedhyw/json-log-viewer/releases/download/v1.1.0/jlv_darwin_arm64.tar.gz"
      sha256 "95b65b5774f79bf7e9279263a2fde1ed6f5aef7903965118305269cc4186015d"

      def install
        bin.install "jlv"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hedhyw/json-log-viewer/releases/download/v1.1.0/jlv_linux_amd64.tar.gz"
        sha256 "8e935c64a3c8f62e9e8ff8e35a44217f7ab791c1276c81d6895f86445bc7c721"

        def install
          bin.install "jlv"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/hedhyw/json-log-viewer/releases/download/v1.1.0/jlv_linux_arm.tar.gz"
        sha256 "f8e6928c44ac48e74e1190662c3b05391dfbbc1a47fbded91e858a3b6cd5363f"

        def install
          bin.install "jlv"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hedhyw/json-log-viewer/releases/download/v1.1.0/jlv_linux_arm64.tar.gz"
        sha256 "77fd764668edd02ffd5d468358b8e23b3f568359ca86c216847b4478fca23d3a"

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
