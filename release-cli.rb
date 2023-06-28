# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ReleaseCli < Formula
  desc "CLI for Release (release.com)"
  homepage "https://release.com/"
  version "0.20.9-beta"

  on_macos do
    url "https://release-cli.s3.us-west-2.amazonaws.com/v0.20.9-beta/release_0.20.9-beta_Darwin_x86_64.tar.gz"
    sha256 "3f5265523fc7ac4bb885c4877d14e41c31119e13a7aa3bd30035724e0b0d974f"

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

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the ReleaseCli
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://release-cli.s3.us-west-2.amazonaws.com/v0.20.9-beta/release_0.20.9-beta_Linux_x86_64.tar.gz"
      sha256 "eb751c0579164623489f6d553e0417bf811266f15fc3c8b607cc46afbecb56ac"

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
      url "https://release-cli.s3.us-west-2.amazonaws.com/v0.20.9-beta/release_0.20.9-beta_Linux_arm64.tar.gz"
      sha256 "13c46cf58fcacb87cc39d1d5587b9e461b9d2cae227b71ebe4e9a0123d8bbd14"

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
