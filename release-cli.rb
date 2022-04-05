# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ReleaseCli < Formula
  desc "CLI for Release (releasehub.com)"
  homepage "https://releasehub.com/"
  version "0.4.0-beta3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://release-cli.s3.us-west-2.amazonaws.com/v0.4.0-beta3/release_0.4.0-beta3_Darwin_arm64.tar.gz"
      sha256 "ad904e00fe7b0b701fd4e98658ccc79ce98d8418624c2cd99050690d73422210"

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
      url "https://release-cli.s3.us-west-2.amazonaws.com/v0.4.0-beta3/release_0.4.0-beta3_Darwin_x86_64.tar.gz"
      sha256 "2434883c73504b9eb4a3b1ccfe793ac420530b0336f5d9283d04f921b4688d74"

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
    if Hardware::CPU.intel?
      url "https://release-cli.s3.us-west-2.amazonaws.com/v0.4.0-beta3/release_0.4.0-beta3_Linux_x86_64.tar.gz"
      sha256 "dd617f252c34e92c968ace396580fe5891f64d7600517871207d4457e997f2da"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://release-cli.s3.us-west-2.amazonaws.com/v0.4.0-beta3/release_0.4.0-beta3_Linux_arm64.tar.gz"
      sha256 "a2377b7cb078477876277e1e764cb6d6e0986c28768c563855a8d260fbe1b82c"

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
