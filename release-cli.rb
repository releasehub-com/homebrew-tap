# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ReleaseCli < Formula
  desc "CLI for Release (releasehub.com)"
  homepage "https://releasehub.com/"
  version "0.10.6-beta"

  on_macos do
    if Hardware::CPU.intel?
      url "https://release-cli.s3.us-west-2.amazonaws.com/v0.10.6-beta/release_0.10.6-beta_Darwin_x86_64.tar.gz"
      sha256 "60cd4aa5a499a7eee1116faee002dd25dc281f0b00f90f9ba84e8836da3a3b22"

      def install
        bin.install "release"

        # Install bash completion
        output = Utils.safe_popen_read(bin/"release", "completion", "bash")
        (bash_completion/"release").write output

        # Install zsh completion
        output = Utils.safe_popen_read(bin/"release", "completion", "zsh")
        (zsh_completion/"_release").write output

        # Install fish completion
        output = Utils.safe_popen_read(bin/"release", "completion", "fish")
        (fish_completion/"release.fish").write output
      end
    end
    if Hardware::CPU.arm?
      url "https://release-cli.s3.us-west-2.amazonaws.com/v0.10.6-beta/release_0.10.6-beta_Darwin_arm64.tar.gz"
      sha256 "f8cd35b08f1e9658de48af6b262807938de5756a86d6153af85208d575605797"

      def install
        bin.install "release"

        # Install bash completion
        output = Utils.safe_popen_read(bin/"release", "completion", "bash")
        (bash_completion/"release").write output

        # Install zsh completion
        output = Utils.safe_popen_read(bin/"release", "completion", "zsh")
        (zsh_completion/"_release").write output

        # Install fish completion
        output = Utils.safe_popen_read(bin/"release", "completion", "fish")
        (fish_completion/"release.fish").write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://release-cli.s3.us-west-2.amazonaws.com/v0.10.6-beta/release_0.10.6-beta_Linux_arm64.tar.gz"
      sha256 "e6fdbabdaa5d1f2baa8e3bdef977b3c7c7ea0c78d6a48dfafc847491fced0997"

      def install
        bin.install "release"

        # Install bash completion
        output = Utils.safe_popen_read(bin/"release", "completion", "bash")
        (bash_completion/"release").write output

        # Install zsh completion
        output = Utils.safe_popen_read(bin/"release", "completion", "zsh")
        (zsh_completion/"_release").write output

        # Install fish completion
        output = Utils.safe_popen_read(bin/"release", "completion", "fish")
        (fish_completion/"release.fish").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://release-cli.s3.us-west-2.amazonaws.com/v0.10.6-beta/release_0.10.6-beta_Linux_x86_64.tar.gz"
      sha256 "d8b0253fe3f90bc7607227de547f6a895d28572426bed97f431f5e8192d7b79d"

      def install
        bin.install "release"

        # Install bash completion
        output = Utils.safe_popen_read(bin/"release", "completion", "bash")
        (bash_completion/"release").write output

        # Install zsh completion
        output = Utils.safe_popen_read(bin/"release", "completion", "zsh")
        (zsh_completion/"_release").write output

        # Install fish completion
        output = Utils.safe_popen_read(bin/"release", "completion", "fish")
        (fish_completion/"release.fish").write output
      end
    end
  end
end
