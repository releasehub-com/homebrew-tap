# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ReleaseCli < Formula
  desc "CLI for Release (releasehub.com)"
  homepage "https://releasehub.com/"
  version "0.2.0-beta6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/releasehub-com/cli/releases/download/v0.2.0-beta6/release_0.2.0-beta6_Darwin_x86_64.tar.gz"
      sha256 "85d813c8ea30c50109fdb57d08143f0e16da53c2fafb8179d6d6c26d9db00670"

      def install
        bin.install "release"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/releasehub-com/cli/releases/download/v0.2.0-beta6/release_0.2.0-beta6_Darwin_arm64.tar.gz"
      sha256 "26e2e70ecfc0bdf79ddaa487fd881182bef28f945b06dbc82d28dbf6df5cc4a4"

      def install
        bin.install "release"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/releasehub-com/cli/releases/download/v0.2.0-beta6/release_0.2.0-beta6_Linux_arm64.tar.gz"
      sha256 "79ff9e90d9e5db70ce2d22fc129470d373ead6c2d227324d7f104d7fc12f1136"

      def install
        bin.install "release"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/releasehub-com/cli/releases/download/v0.2.0-beta6/release_0.2.0-beta6_Linux_x86_64.tar.gz"
      sha256 "3551972d639740eefcf515e7b45137a720a2f170ba6a83d3c30fb18f5bd89bc4"

      def install
        bin.install "release"
      end
    end
  end
end
