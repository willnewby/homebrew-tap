# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Qq < Formula
  desc "A simple, fast job queue based on River Queue"
  homepage "https://github.com/willnewby/qq"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/willnewby/qq/releases/download/v0.1.7/qq_Darwin_x86_64.tar.gz"
      sha256 "1c86195384b0193bb009d5379f0faa44fd2f5ae3862d1e0bb33c965e24275d53"

      def install
        bin.install "qq"

        # Generate and install shell completions
        output = Utils.safe_popen_read("#{bin}/qq", "completion", "bash")
        (bash_completion/"qq").write output

        output = Utils.safe_popen_read("#{bin}/qq", "completion", "zsh")
        (zsh_completion/"_qq").write output

        output = Utils.safe_popen_read("#{bin}/qq", "completion", "fish")
        (fish_completion/"qq.fish").write output
      end
    end
    on_arm do
      url "https://github.com/willnewby/qq/releases/download/v0.1.7/qq_Darwin_arm64.tar.gz"
      sha256 "78279591ba8cbbd5b597ab67585d4ba9777a3c48b79147c5c07cfd6730142143"

      def install
        bin.install "qq"

        # Generate and install shell completions
        output = Utils.safe_popen_read("#{bin}/qq", "completion", "bash")
        (bash_completion/"qq").write output

        output = Utils.safe_popen_read("#{bin}/qq", "completion", "zsh")
        (zsh_completion/"_qq").write output

        output = Utils.safe_popen_read("#{bin}/qq", "completion", "fish")
        (fish_completion/"qq.fish").write output
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/willnewby/qq/releases/download/v0.1.7/qq_Linux_x86_64.tar.gz"
        sha256 "768b9c3cfc1c08d4149f9ebd6532f8987a9346bedd62f4a8b2b99c31b733a857"

        def install
          bin.install "qq"

          # Generate and install shell completions
          output = Utils.safe_popen_read("#{bin}/qq", "completion", "bash")
          (bash_completion/"qq").write output

          output = Utils.safe_popen_read("#{bin}/qq", "completion", "zsh")
          (zsh_completion/"_qq").write output

          output = Utils.safe_popen_read("#{bin}/qq", "completion", "fish")
          (fish_completion/"qq.fish").write output
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/willnewby/qq/releases/download/v0.1.7/qq_Linux_arm64.tar.gz"
        sha256 "cf10589167e98ea3db84e3192f88730c2cc18d14ad891dc2c99564278231deab"

        def install
          bin.install "qq"

          # Generate and install shell completions
          output = Utils.safe_popen_read("#{bin}/qq", "completion", "bash")
          (bash_completion/"qq").write output

          output = Utils.safe_popen_read("#{bin}/qq", "completion", "zsh")
          (zsh_completion/"_qq").write output

          output = Utils.safe_popen_read("#{bin}/qq", "completion", "fish")
          (fish_completion/"qq.fish").write output
        end
      end
    end
  end

  test do
    system "#{bin}/qq", "--version"
  end
end
