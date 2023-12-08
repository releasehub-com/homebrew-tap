# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ReleaseCli < Formula
  desc "CLI for Release (release.com)"
  homepage "https://release.com/"
  version "0.28.1-beta"

  on_macos do
    url "https://release-cli.s3.us-west-2.amazonaws.com/v0.28.1-beta/release_0.28.1-beta_Darwin_x86_64.tar.gz"
    sha256 "96ef53de73907f4e66dbdb9707c43ea78f313613c5f13f0f9c1eddda20eb4d24"

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
      url "https://release-cli.s3.us-west-2.amazonaws.com/v0.28.1-beta/release_0.28.1-beta_Linux_x86_64.tar.gz"
      sha256 "70aed9b0dc391ba7fa2efc486640d5ea6d2c97ebdbafadbd65896140a34d2f4c"

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
      url "https://release-cli.s3.us-west-2.amazonaws.com/v0.28.1-beta/release_0.28.1-beta_Linux_arm64.tar.gz"
      sha256 "2abd6de4a17aacd2243e8367350dc4e38a7360e3bcb408974a8f87c7c989acb7"

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
