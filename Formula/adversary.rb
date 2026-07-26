class Adversary < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.7.26"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.26/adversary_2026.7.26_darwin_amd64.tar.gz"
      sha256 "a895aa791ea2aca6f5be4c33550aaf9e86bc084a696f6fcafe052cb8a0a519a7"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.26/adversary_2026.7.26_darwin_arm64.tar.gz"
      sha256 "af804222534e5cf03bc2710a42494402afaa4d684cd3f2f62c0f37fa07ef9fe2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.26/adversary_2026.7.26_linux_amd64.tar.gz"
      sha256 "a85da7bad60806e0798bedaf6263f1d73c4cfc7feacd79f4644fefe30e0ffcfb"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.26/adversary_2026.7.26_linux_arm64.tar.gz"
      sha256 "d2662d795d668f84e9d2e55762ec741be3e2c13f20533c844b07d3ab2ec28e53"
    end
  end

  def install
    bin.install "adversary" => "adversary"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary version")
  end
end
