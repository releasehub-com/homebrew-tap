# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ReleaseCli < Formula
  desc "CLI for Release (release.com)"
  homepage "https://release.com/"
  version "0.25.0-beta"

  on_macos do
    url "https://release-cli.s3.us-west-2.amazonaws.com/v0.25.0-beta/release_0.25.0-beta_Darwin_x86_64.tar.gz"
    sha256 "8eb51bce3658a5147dcbd47b007ea8468674c2b9756d45566a4ec09be6eb41e4"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://release-cli.s3.us-west-2.amazonaws.com/v0.25.0-beta/release_0.25.0-beta_Linux_arm64.tar.gz"
      sha256 "39634daadc78c048c23750b60af28f2084875eea31ceb6838fb2ce3aaab0d79d"

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
      url "https://release-cli.s3.us-west-2.amazonaws.com/v0.25.0-beta/release_0.25.0-beta_Linux_x86_64.tar.gz"
      sha256 "37bb3f23e83979b7db47c79a636683fa6a074600bed891845817860bc811d17b"

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
