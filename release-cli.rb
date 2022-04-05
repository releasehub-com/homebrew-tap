# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ReleaseCli < Formula
  desc "CLI for Release (releasehub.com)"
  homepage "https://releasehub.com/"
  version "0.4.0-beta4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://release-cli.s3.us-west-2.amazonaws.com/v0.4.0-beta4/release_0.4.0-beta4_Darwin_arm64.tar.gz"
      sha256 "d550cee9e41505ad8c5a55bc9c9edb422bc25d2df220b533ffb1cd4d88090ce3"

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
      url "https://release-cli.s3.us-west-2.amazonaws.com/v0.4.0-beta4/release_0.4.0-beta4_Darwin_x86_64.tar.gz"
      sha256 "3b594143f23c2257060c21572563b069e2374f75fec5a52d81bf432a5a2b9fb3"

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
      url "https://release-cli.s3.us-west-2.amazonaws.com/v0.4.0-beta4/release_0.4.0-beta4_Linux_arm64.tar.gz"
      sha256 "205183122b836375c85ca016f4d804ae0d8e2ff38629f4fe91572ad80bb9bfdf"

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
      url "https://release-cli.s3.us-west-2.amazonaws.com/v0.4.0-beta4/release_0.4.0-beta4_Linux_x86_64.tar.gz"
      sha256 "87f44a6561dee8327bab35484601cc93a8e0d4b3988b1b85c46edf5bc301953d"

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
