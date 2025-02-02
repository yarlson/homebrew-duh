# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Duh < Formula
  desc "duh - a minimalist Docker UI that doesn't get in your way."
  homepage "https://github.com/yarlson/duh"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/yarlson/duh/releases/download/0.4.0/duh_0.4.0_darwin_amd64.tar.gz"
      sha256 "caa5338a4a863d76c91209c4b742a1707b9f73cdfe0c30db000eaebef3451bf2"

      def install
        bin.install "duh"
      end
    end
    on_arm do
      url "https://github.com/yarlson/duh/releases/download/0.4.0/duh_0.4.0_darwin_arm64.tar.gz"
      sha256 "7b3d2a825091aaa8e0de25460447f67d3d76d0a5fee118cbd18382b8590e7cae"

      def install
        bin.install "duh"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yarlson/duh/releases/download/0.4.0/duh_0.4.0_linux_amd64.tar.gz"
        sha256 "8b02c5640b7e7dc0caebb351df0bef26c16ebce00c437190b28909e7eab64031"

        def install
          bin.install "duh"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yarlson/duh/releases/download/0.4.0/duh_0.4.0_linux_arm64.tar.gz"
        sha256 "4fb3bb50df790830915dba5dd43cf72e8f84aeb02315f3e3ae2344bc37c8cd85"

        def install
          bin.install "duh"
        end
      end
    end
  end

  test do
    system "#{bin}/duh --version"
  end
end
