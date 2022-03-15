# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ReleaseCli < Formula
  desc "CLI for Release (releasehub.com)"
  homepage "https://releasehub.com/"
  version "0.2.0-beta11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/releasehub-com/cli/releases/download/v0.2.0-beta11/release_0.2.0-beta11_Darwin_x86_64.tar.gz"
      sha256 "3b24edb1398307fa494dee9875fbf0e43cbbcfea6c46863926726aca4ae5cc90"

      def install
        bin.install "release"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/releasehub-com/cli/releases/download/v0.2.0-beta11/release_0.2.0-beta11_Darwin_arm64.tar.gz"
      sha256 "41c401096f97469e25566f643b5dc89ccc3c2dec9b2ec193b12b92e304064d0b"

      def install
        bin.install "release"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/releasehub-com/cli/releases/download/v0.2.0-beta11/release_0.2.0-beta11_Linux_x86_64.tar.gz"
      sha256 "d0cb3170947725166698a9994778dac58bb6a888b0bec71563a1385fa4b50d14"

      def install
        bin.install "release"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/releasehub-com/cli/releases/download/v0.2.0-beta11/release_0.2.0-beta11_Linux_arm64.tar.gz"
      sha256 "29e32d943f0a06424ab124d7be695ced83e1f388a8ba3b789c8c5c1188e95876"

      def install
        bin.install "release"
      end
    end
  end
end
